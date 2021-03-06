package application.data
{
    import feathers.data.ListCollection;

    public class Collections
    {
        private static var _collapsedList:ListCollection;

        public static function get collapsedList():ListCollection
        {
            if (!_collapsedList) _collapsedList = getCollapsedListCollection();
            return _collapsedList;
        }

        private static function getCollapsedListCollection():ListCollection
        {
            var collection:ListCollection = new ListCollection();
            collection.addItem({label:"Bitcoin протокол нужен не только для пересылки денег от А к Б. У него много функций и он открывает много возможностей, которые общество все еще исследует. Здесь представлены некоторые технологии, на данный момент изученные и в некоторых случаях реализованные в реальные продукты и услуги. Самые интересные способы использования Bitcoin, возможно еще предстоит открыть."});
            collection.addItem({label:"С Bitcoin возможен беспрецедентный уровень безопасности. Сеть снабжает пользователей безопасностью от наиболее распространенных мошенничеств, таких как возврат платежей или нежелательных счетов, и биткоины невозможно подделать. Пользователи могут создать резервную копию или зашифровать свои бумажники, а устройства для хранения биткоинов могут в будущем сделать очень маловероятной что у вас украдут или вы потеряете деньги. Bitcoin разработан, что бы позволить пользователям обладать полным контролем над своими деньгами."});
            collection.addItem({label:"Все платежи в мире могут быть полностью взаимосвязаны. Bitcoin позволяет любому банку, компании или частному лицу безопасно отправлять и получать платежи где угодно и когда угодно, с наличием или отсутствием банковского счета. Bitcoin доступен большому количеству стран, которые все еще находятся вне досягаемости от большинства платежных систем, в связи с их ограничениями. Bitcoin увеличивает глобальную доступность торговли, и может помочь расцвету международной торговли."});
            collection.addItem({label:"Bitcoin был особенно эффективным решением для чаевых и пожертвований в некоторых случаях. Отправка платежа требует только одно клика, а получение может быть таким же простым, как демонстрация QR кода. Пожертвования могут быть видны пользователям, давая большую прозрачность для некоммерческих организаций. В случае чрезвычайных ситуаций, Bitcoin пожертвования могут способствовать боле быстрой международной реакции."});
            collection.addItem({label:"Bitcoin может обрабатывать платежи величиной в доллар, а скоро и даже более маленьких сумм. Ежедневно такие платежи обычны. Представьте себе, что вы слушаете интернет радио, оплаченное за секунду, смотрите веб страницы, с маленькими чаевыми за каждую не показанную вам рекламу, или покупаете пропускную способность WiFi точки с помощи одного килобайта. Bitcoin достаточно эффективен, что бы все это стало реальностью. Узнайте больше о технологии, позволяющей совершать микро платежи в Bitcoin."});
            collection.addItem({label:"Bitcoin может быть использован, что бы разрабатывать арбитражно-посреднические услуги, используя множественные подписи. Такие услуги позволят сторонней организации, подтвердить или отозвать платеж, в случае несогласия двух других сторон, без получения контроля над их деньгами. Так как эти услуги будут доступными любым пользователям или компаниям использующим Bitcoin, это, вероятно, приведет к конкуренции и к высоким стандартам качества."});
            collection.addItem({label:"Множественные подписи, позволяют транзакции быть принятой сетью, только если конкретное количество из определенной группы людей согласятся подписать транзакцию. Это может использовать совет директоров, предотвращая растрату любым из ее членов общих средств, без ведома остальных членов. Это так же может быть использовано банками, что бы предотвратить воровство, блокируя платежи выше определенного порога, если пользователь не предоставляет дополнительные полномочия."});
            collection.addItem({label:"Bitcoin предлагает решения для большинства проблем связанных с доверием, которые обычно связаны с банками. С избирательной прозрачностью учета, и необратимостью транзакций, Bitcoin может быть использован как фундамент, для восстановления доверия и согласия. Нечестные банки не могут обмануть систему и заработать за счет других банков или людей. Будущее, где большинство банков будет поддерживать Bitcoin может помочь восстановить целостность и доверие в финансовые институты."});
            collection.addItem({label:"Благодаря высокой степени децентрализации, Bitcoin создал другую форму платежной системы с большей устойчивостью и потенциалом. Bitcoin может управлять торговлей на миллионы долларов, без необходимости военной защиты. Без центра где может возникнуть ошибка, такой как центр обработки данных, атака на систему является более сложным проектом. Bitcoin может представлять собой интересный шаг вперед в обеспечении безопасности локальных и глобальных финансовых систем."});
            return collection;
        }
    }
}
