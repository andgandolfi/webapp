const Koa = require('koa')
const app = new Koa()

app.use(ctx => {
  ctx.body = 'hello world'
})

app.listen(process.env.PORT || 3000)
