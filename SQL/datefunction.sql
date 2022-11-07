

1. ADDDATE : The ADDDATE() function adds a time/date interval to a date and then returns the date.
             ADDDATE() ફંક્શન તારીખમાં સમય/તારીખ અંતરાલ ઉમેરે છે અને પછી તારીખ પરત કરે છે.

            SELECT ADDDATE("2017-06-15", INTERVAL 10 DAY);

            +----------------------------------------+
            | ADDDATE("2017-06-15", INTERVAL 10 DAY) |
            +----------------------------------------+
            | 2017-06-25                             |
            +----------------------------------------+


2. ADDTIME(): The ADDTIME() function adds a time interval to a time/datetime and then returns the time/datetime.
            ADDTIME() ફંક્શન સમય/તારીખના સમય માટે સમય અંતરાલ ઉમેરે છે અને પછી સમય/તારીખનો સમય પરત કરે છે.

            SELECT ADDTIME("2017-06-15 09:34:21", "2");

            +-------------------------------------+
            | ADDTIME("2017-06-15 09:34:21", "2") |
            +-------------------------------------+
            | 2017-06-15 09:34:23                 |
            +-------------------------------------+


3. CURDATE():   The CURDATE() function returns the current date.
                Note: The date is returned as "YYYY-MM-DD" (string) or as YYYYMMDD (numeric).
                Note: This function equals the CURRENT_DATE() function.

                CURDATE() ફંક્શન વર્તમાન તારીખ પરત કરે છે.
                નોંધ: તારીખ "YYYY-MM-DD" (સ્ટ્રિંગ) તરીકે અથવા YYYYMMDD (સંખ્યાત્મક) તરીકે પરત કરવામાં આવે છે.
                નોંધ: આ ફંક્શન CURRENT_DATE() ફંક્શનની બરાબર છે.

             SELECT CURDATE();

            +------------+
            | CURDATE()  |
            +------------+
            | 2022-10-21 |
            +------------+   

4.CURRENT_DATE(): The CURRENT_DATE() function returns the current date.
                  CURRENT_DATE() ફંક્શન વર્તમાન તારીખ પરત કરે છે.

                  SELECT CURRENT_DATE();

                +----------------+
                | CURRENT_DATE() |
                +----------------+
                | 2022-10-21     |
                +----------------+

        
5.CURRENT_TIME(): The CURRENT_TIME() function returns the current time.
                  This function equals the CURTIME() function.
                  CURRENT_TIME() ફંક્શન વર્તમાન સમય પરત કરે છે.
                
                SELECT CURRENT_TIME();

                +----------------+
                | CURRENT_TIME() |
                +----------------+
                | 10:01:12       |
                +----------------+


6.CURRENT_TIMESTAMP(): The CURRENT_TIMESTAMP() function returns the current date and time.
                       CURRENT_TIMESTAMP() ફંક્શન વર્તમાન તારીખ અને સમય પરત કરે છે.

                       SELECT CURRENT_TIMESTAMP();

                        +---------------------+
                        | CURRENT_TIMESTAMP() |
                        +---------------------+
                        | 2022-10-21 10:08:23 |
                        +---------------------+

7. CURTIME(): The CURTIME() function returns the current time.
              CURTIME() ફંક્શન વર્તમાન સમય પરત કરે છે.

              SELECT CURTIME();

              +-----------+
              | CURTIME() |
              +-----------+
              | 10:59:13  |
              +-----------+


8. DATE(): The DATE() function extracts the date part from a datetime expression.
            DATE() ફંક્શન તારીખ સમયના અભિવ્યક્તિમાંથી તારીખનો ભાગ કાઢે છે.

            SELECT DATE("2017-06-15");

            +--------------------+
            | DATE("2017-06-15") |
            +--------------------+
            | 2017-06-15         |
            +--------------------+

            SELECT DATE(orderdate) FROM sales_order;

            +-----------------+
            | DATE(orderdate) |
            +-----------------+
            | 2004-06-12      |
            | 2004-06-25      |
            | 2004-04-03      |
            | 2004-05-24      |
            | 2004-02-18      |
            | 2004-05-20      |
            +-----------------+

9. DATEDIFF(): The DATEDIFF() function returns the number of days between two date values.
                DATEDIFF() ફંક્શન બે તારીખ મૂલ્યો વચ્ચેના દિવસોની સંખ્યા પરત કરે છે.

                SELECT DATEDIFF("2003-09-06", "2003-07-20");

                +--------------------------------------+
                | DATEDIFF("2003-09-06", "2003-07-20") |
                +--------------------------------------+
                |                                   48 |
                +--------------------------------------+



10.DATE_ADD(): The DATE_ADD() function adds a time/date interval to a date and then returns the date.
                DATE_ADD() ફંક્શન તારીખમાં સમય/તારીખ અંતરાલ ઉમેરે છે અને પછી તારીખ પરત કરે છે.

                MICROSECOND
                SECOND
                MINUTE
                HOUR
                DAY
                WEEK
                MONTH
                QUARTER
                YEAR


                SELECT DATE_ADD("2003-07-20", INTERVAL 48 DAY);


                +-----------------------------------------+
                | DATE_ADD("2003-07-20", INTERVAL 48 DAY) |
                +-----------------------------------------+
                | 2003-09-06                              |
                +-----------------------------------------+


11. 