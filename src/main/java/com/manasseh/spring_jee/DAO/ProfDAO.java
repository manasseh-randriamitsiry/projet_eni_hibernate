package com.manasseh.spring_jee.DAO;
import com.manasseh.spring_jee.model.Prof;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class ProfDAO {
//    @Autowired
    HibernateTemplate hibernateTemplate;

    public void addProf(Prof prof){
        hibernateTemplate.save(prof);
    }

    public List<Prof> getAllProf(){
        return hibernateTemplate.loadAll(Prof.class);
    }

    public Prof getProfById(Long id){
        return hibernateTemplate.load(Prof.class, id);
    }

    public void updateProf(Prof prof){
        hibernateTemplate.update(prof);
    }

    public void deleteProf(Long id){
        hibernateTemplate.delete(hibernateTemplate.load(Prof.class, id));
    }
}
