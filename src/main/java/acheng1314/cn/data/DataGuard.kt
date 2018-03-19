package acheng1314.cn.data

import acheng1314.cn.domain.Guard
import acheng1314.cn.util.DateUtil
import acheng1314.cn.util.StringUtils
import org.springframework.web.bind.annotation.RequestParam
import java.io.Serializable

class DataGuard : Serializable {

    var title: String? = null
    var content: String? = null

    var cover1: String? = null
    var cover2: String? = null
    var cover3: String? = null
    var cover4: String? = null

    var description1: String? = null
    var description2: String? = null
    var description3: String? = null
    var description4: String? = null

    val convert2Guard: Guard
        get() {
            val result = Guard()
            result.title = title
            result.content = content
            result.cover = StringBuffer()
                    .append(if (!StringUtils.isEmpty(cover1)) cover1!! + "," else "")
                    .append(if (!StringUtils.isEmpty(cover2)) cover2!! + "," else "")
                    .append(if (!StringUtils.isEmpty(cover3)) cover3!! + "," else "")
                    .append(if (!StringUtils.isEmpty(cover4)) cover4!! else "")
                    .toString()

            result.description = StringBuffer()
                    .append(if (!StringUtils.isEmpty(description1)) description1!! + "," else "")
                    .append(if (!StringUtils.isEmpty(description2)) description2!! + "," else "")
                    .append(if (!StringUtils.isEmpty(description3)) description3!! + "," else "")
                    .append(if (!StringUtils.isEmpty(description4)) description4!! else "")
                    .toString()
            //当前插入时间
            result.date = DateUtil.getDate()

            return result
        }
}