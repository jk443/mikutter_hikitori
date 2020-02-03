# -*- coding: utf-8 -*-

Plugin.create(:mikutter_hikitori) do
  command(
          :mikutter_hikitori,
          name: '息を引き取るプラグイン',
          condition: -> opt { compose?(opt.world, opt.messages[0]) },
          visible: true,
          role: :timeline
          ) do |opt|
    to_name = opt.messages[0].user.idname
    msg = "そう言うと"
    msg = msg + " @"+to_name
    msg = msg + " は静かに息を引き取った．"
    msg = msg + "誰もいない，電気もついていない，"
    msg = msg + "悪臭漂う部屋の片隅で・・・"
    msg = msg + "主を失ったパソコンの光だけが，"
    msg = msg + "動かなくなった" + " @"+to_name
    msg = msg + " を優しく照らし続けていた．"
    msg = msg + '　' * [(rand(140-msg.split(//).size+1)+1), 0].max
    compose(opt.world, opt.messages[0], body: msg)
  end
end
