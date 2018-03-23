package acheng1314.cn.service

import acheng1314.cn.dao.BaseHouseDao
import acheng1314.cn.domain.BaseHouse
import acheng1314.cn.util.DateUtil
import acheng1314.cn.validate.BeanValidator
import com.baomidou.mybatisplus.plugins.pagination.Pagination
import com.baomidou.mybatisplus.service.impl.ServiceImpl
import org.springframework.stereotype.Service

@Service("houseService")
class HouseServiceImpl : ServiceImpl<BaseHouseDao, BaseHouse>() {

    @Throws(Exception::class)
    fun saveBaseHouse(data: BaseHouse) {
        try {
            BeanValidator.validate(data)
            data.date = DateUtil.getDate()
            baseMapper.insert(data)
        } catch (e: Exception) {
            throw Exception(e.message)
        }
    }

    fun findAllByPage(pageNum: Int, pageSize: Int): ArrayList<BaseHouse>? {
        return try {
            val pagination = Pagination(pageNum, pageSize)
            setTotalPage(pagination.pages)
            baseMapper.findAllByPage(pagination)
        } catch (e: Exception) {
            null
        }
    }

    var totalPage: Int? = null
    fun setTotalPage(pages: Int) {
        this.totalPage = pages
    }

}