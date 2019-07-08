package org.seckill.dto;

import lombok.Data;

@Data
public class Exposer {
    //布尔
    private boolean exposed;

    //加密
    private String md5;

    //秒杀商品id
    private long seckillId;

    //当前时间 时间戳 毫秒
    private long now;

    //开始时间 时间戳 毫秒
    private long start;

    //结束时间 时间戳 毫秒
    private long end;

    public Exposer(boolean exposed, String md5, long seckillId) {
        this.exposed = exposed;
        this.md5 = md5;
        this.seckillId = seckillId;
    }

    public Exposer(boolean exposed, long seckillId, long now, long start, long end) {
        this.exposed = exposed;
        this.seckillId = seckillId;
        this.now = now;
        this.start = start;
        this.end = end;
    }

    public Exposer(boolean exposed, long seckillId) {
        this.exposed = exposed;
        this.seckillId = seckillId;
    }
}
