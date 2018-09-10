const request = require('request');
const mysql = require('mysql');
const async = require('async');
const cheerio = require('cheerio');
const filter = require('bloom-filter-x');
const iconv = require('iconv-lite');
const con = mysql.createPool({
  host: 'localhost',
  port: 3306,
  user: 'root',
  password: '',
  database: 'db'
});

function feedFilter() {
  console.log('开始喂布隆过滤器');
  con.query('select * from news', (err, results) => {
    results.forEach(v => filter.add(v.url));
    console.log('喂完了');
    recommend();
    video();
    hotspot();
    science();
    car();
  })
}
feedFilter()
// 请求 news.zol.com.cn 找到你要的东西  放进数据库

// 推荐新闻 cid==1
let recommend = function(){
  let data = [];
  let d = new Date();
  request(
    // 第一个参数
    {
      url: 'https://m.zol.com.cn/news/'
    },
    // 第二个参数
    (err, res, body) => {
      let $ = cheerio.load(body);
      $('.news-list li').each((k, v) => {
        let url = "https://m.zol.com.cn" + $(v).find('a').attr('href');
        if (filter.add(url)) {
          data.push({
            cid: 1,
            title: $(v).find('.title').text(),
            dsc: '',
            img:  $(v).find('img').attr('data-src'),
            url: url,
            comment_num : $(v).find('.comment-num').text(),
            create_time: $(v).find('.time').text()
          })
        }
      });
      console.log( d.toLocaleString() + `抓取一次推荐新闻数据,共${data.length}条数据`);
      async.eachLimit(
        data, 1, (v, next) => {
          con.query(
            'INSERT INTO `news` ( `cid`, `title`, `dsc`, `img`, `url`, `comment_num`,`ctime`) VALUES (?,?,?,?,?,?,?)',
            [v.cid, v.title, v.dsc, v.img, v.url, v.comment_num,v.create_time],
            (err, result) => {
              console.log(result.insertId);
              next(null);
            }
          )
        },
        () => {
          setTimeout(recommend, 60 * 1000)
        }
      )
    }
  )
};

// 视频新闻 cid==2
let video = function(){
  let data = [];
  let d = new Date();
  request(
    // 第一个参数
    {
      url: 'https://m.zol.com.cn/news/list_6.html'
    },
    // 第二个参数
    (err, res, body) => {
      let $ = cheerio.load(body);
      $('.news-list li').each((k, v) => {
        let url = "https://m.zol.com.cn" + $(v).find('a').attr('href');
        if (filter.add(url)) {
          data.push({
            cid: 2,
            title: $(v).find('.title').text(),
            dsc: '',
            img:  $(v).find('img').attr('data-src'),
            url: url,
            comment_num : $(v).find('.comment-num').text(),
            create_time: $(v).find('.time').text()
          })
        }
      });
      console.log( d.toLocaleString() + `抓取一次视频新闻数据,共${data.length}条数据`);
      async.eachLimit(
        data, 1, (v, next) => {
          con.query(
            'INSERT INTO `news` ( `cid`, `title`, `dsc`, `img`, `url`, `comment_num`,`ctime`) VALUES (?,?,?,?,?,?,?)',
            [v.cid, v.title, v.dsc, v.img, v.url, v.comment_num,v.create_time],
            (err, result) => {
              console.log(result.insertId);
              next(null);
            }
          )
        },
        () => {
          setTimeout(video, 60 * 1000)
        }
      )
    }
  )
};

// 热点新闻 cid==3
let hotspot = function(){
  let data = [];
  let d = new Date();
  request(
    // 第一个参数
    {
      url: 'https://m.zol.com.cn/news/list_2.html'
    },
    // 第二个参数
    (err, res, body) => {
      let $ = cheerio.load(body);
      $('.news-list li').each((k, v) => {
        let url = "https://m.zol.com.cn" + $(v).find('a').attr('href');
        if (filter.add(url)) {
          data.push({
            cid: 3,
            title: $(v).find('.title').text(),
            dsc: '',
            img:  $(v).find('img').attr('data-src'),
            url: url,
            comment_num : $(v).find('.comment-num').text(),
            create_time: $(v).find('.time').text()
          })
        }
      });
      console.log( d.toLocaleString() + `抓取一次热点新闻数据,共${data.length}条数据`);
      async.eachLimit(
        data, 1, (v, next) => {
          con.query(
            'INSERT INTO `news` ( `cid`, `title`, `dsc`, `img`, `url`, `comment_num`,`ctime`) VALUES (?,?,?,?,?,?,?)',
            [v.cid, v.title, v.dsc, v.img, v.url, v.comment_num,v.create_time],
            (err, result) => {
              console.log(result.insertId);
              next(null);
            }
          )
        },
        () => {
          setTimeout(hotspot, 60 * 1000)
        }
      )
    }
  )
};

// 科技新闻 cid==7
let science = function(){
  let data = [];
  let d = new Date();
  request(
    // 第一个参数
    {
      url: 'https://m.zol.com.cn/news/list_8.html'
    },
    // 第二个参数
    (err, res, body) => {
      let $ = cheerio.load(body);
      $('.news-list li').each((k, v) => {
        let url = "https://m.zol.com.cn" + $(v).find('a').attr('href');
        if (filter.add(url)) {
          data.push({
            cid: 7,
            title: $(v).find('.title').text(),
            dsc: '',
            img:  $(v).find('img').attr('data-src'),
            url: url,
            comment_num : $(v).find('.comment-num').text(),
            create_time: $(v).find('.time').text()
          })
        }
      });
      console.log( d.toLocaleString() + `抓取一次科技新闻数据,共${data.length}条数据`);
      async.eachLimit(
        data, 1, (v, next) => {
          con.query(
            'INSERT INTO `news` ( `cid`, `title`, `dsc`, `img`, `url`, `comment_num`,`ctime`) VALUES (?,?,?,?,?,?,?)',
            [v.cid, v.title, v.dsc, v.img, v.url, v.comment_num,v.create_time],
            (err, result) => {
              console.log(result.insertId);
              next(null);
            }
          )
        },
        () => {
          setTimeout(science, 60 * 1000)
        }
      )
    }
  )
};

// 汽车新闻 cid==9
let car = function(){
  let data = [];
  let d = new Date();
  request(
    // 第一个参数
    {
      url: 'https://m.zol.com.cn/more/2_1700.shtml'
    },
    // 第二个参数
    (err, res, body) => {
      let $ = cheerio.load(body);
      $('.news-list li').each((k, v) => {
        let url = "https://m.zol.com.cn" + $(v).find('a').attr('href');
        if (filter.add(url)) {
          data.push({
            cid: 9,
            title: $(v).find('.title').text(),
            dsc: '',
            img:  $(v).find('img').attr('data-src'),
            url: url,
            comment_num : $(v).find('.comment-num').text(),
            create_time: $(v).find('.time').text()
          })
        }
      });
      console.log( d.toLocaleString() + `抓取一次汽车新闻数据,共${data.length}条数据`);
      async.eachLimit(
        data, 1, (v, next) => {
          con.query(
            'INSERT INTO `news` ( `cid`, `title`, `dsc`, `img`, `url`, `comment_num`,`ctime`) VALUES (?,?,?,?,?,?,?)',
            [v.cid, v.title, v.dsc, v.img, v.url, v.comment_num,v.create_time],
            (err, result) => {
              console.log(result.insertId);
              next(null);
            }
          )
        },
        () => {
          setTimeout(car, 60 * 1000)
        }
      )
    }
  )
};