// Description:
//   ぬるぽ ガッ

module.exports = (robot => {
    robot.hear(/ぬるぽ/i, res => {
        res.send("ガッ")
    })
})
