package ua.com.vhsoft.crman.data.services;

import com.mysema.query.types.Predicate;
import ua.com.vhsoft.crman.data.repositories.SysLogRepository;
import ua.com.vhsoft.crman.mvc.models.SysLog;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author Vasyl Hoshovsky <vasyl.hoshovsky at vhsoft.com.ua>
 */
public class SysLogService implements AbstractService<SysLog> {

    @Resource
    private SysLogRepository sysLogRepository;

    @Override
    public SysLog addOrUpdate(SysLog entity) {
        return sysLogRepository.saveAndFlush(entity);
    }

    @Override
    public List<SysLog> findAll(Predicate predicate) {
        return (List<SysLog>) sysLogRepository.findAll(predicate);
    }

    @Override
    public List<SysLog> findAll() {
        return sysLogRepository.findAll();
    }

    @Override
    public void delete(SysLog entity) {
        sysLogRepository.delete(entity);
    }

}
