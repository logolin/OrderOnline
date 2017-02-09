package com.li.repository;

import org.springframework.data.repository.CrudRepository;

import com.li.domain.User;

public interface UserRepository extends CrudRepository<User, Integer> {

	/**
	 * 根据用户名查找用户
	 * @param userName
	 * @return
	 */
	User findByUserName(String userName);
}
