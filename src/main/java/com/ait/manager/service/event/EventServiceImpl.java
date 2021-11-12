package com.ait.manager.service.event;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ait.manager.model.Event;
import com.ait.manager.repository.EventRepository;

@Service
public class EventServiceImpl implements EventService {
	
	@Autowired 
	private EventRepository eventRepository;

	@Override
	public Iterable<Event> findAll() {
		// TODO Auto-generated method stub
		return eventRepository.findAll();
	}

	@Override
	public Optional<Event> findById(Long id) {
		// TODO Auto-generated method stub
		return eventRepository.findById(id);
	}

	@Override
	public Event save(Event t) {
		// TODO Auto-generated method stub
		return eventRepository.save(t);
	}

	@Override
	public void remove(Long id) {
		// TODO Auto-generated method stub
		eventRepository.deleteById(id);
	}

}
