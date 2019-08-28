package com.sourcecode.malls.service.impl;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sourcecode.malls.domain.client.Client;
import com.sourcecode.malls.domain.client.ClientPoints;
import com.sourcecode.malls.dto.query.PageInfo;
import com.sourcecode.malls.repository.jpa.impl.client.ClientRepository;
import com.sourcecode.malls.repository.jpa.impl.coupon.ClientPointsRepository;
import com.sourcecode.malls.service.base.BaseService;

@Service
@Transactional
public class ClientService implements BaseService {
	Logger logger = LoggerFactory.getLogger(getClass());

	@Autowired
	private ClientRepository clientRepository;

	@Autowired
	private ClientPointsRepository clientPointsRepository;

	public void initClientPoints() {
		PageInfo pageInfo = new PageInfo();
		pageInfo.setNum(1);
		pageInfo.setSize(1000);
		pageInfo.setProperty("createTime");
		pageInfo.setOrder(Direction.ASC.name());
		Pageable pageable = pageInfo.pageable();
		Page<Client> result = null;
		do {
			result = clientRepository.findAll(pageable);
			if (result.hasContent()) {
				result.get().forEach(client -> {
					if (client.getPoints() == null) {
						ClientPoints points = new ClientPoints();
						points.setClient(client);
						clientPointsRepository.save(points);
					}
				});
				pageable = pageable.next();
			}
		} while (result.hasNext());
	}
}
