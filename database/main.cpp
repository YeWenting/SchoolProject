#include <QCoreApplication>
#include <QSqlDatabase>
#include <QDebug>
#include <QSqlQuery>
#include <iostream>
#include <string>
#include <QSqlError>

void printAllBook()
{
    QSqlQuery query;

    query.exec(QString("select * from dbo.book"));
    while (query.next()) {
         QString book_id = query.value(0).toString();
         QString book_name = query.value(1).toString();
         QString company = query.value(2).toString();
         QString author = query.value(3).toString();
         QString price = query.value(4).toString();
         qDebug()<< book_id << book_name << company << author << price;
    }
}

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

    QSqlDatabase db=QSqlDatabase::addDatabase("QODBC");
    db.setDatabaseName(QString("DRIVER={SQL SERVER};"
                                     "SERVER=%1;"
                                     "DATABASE=%2;"
                                     "UID=%3;"
                                     "PWD=%4;"
                                     ).arg("127.0.0.1,1483")
                             .arg("学生选课")
                             .arg("sa")
                             .arg("1996111ywt")
                             );
       if (!db.open()){
           qDebug() << "wrong";
       }
       else {
           qDebug() << "ok";
          }

     /* The original database */
     qDebug() << "The original database is :";
     printAllBook();

     QString bookId, bookName, bookCompany, bookAuthor, bookPrice;

     /* Delete one record */
     qDebug() << "Delete\nPlease input the bookID you want to delete:";
     std::string s;
     std::cin >> s;
     bookId = QString::fromStdString(s);
     QSqlQuery query;
     if (false == query.exec(QString("delete from dbo.book where book_id='%1'").arg(bookId)))
         qDebug() << query.lastError();
     else
         printAllBook();

     /* Update one record */
     qDebug() << "Update\nPlease input the bookID you want to update:";
     std::cin >> s;
     bookId = QString::fromStdString(s);
     qDebug() << "Please input the new book name:";
     std::cin >> s;
     QString book_name = QString::fromStdString(s);
     if (false == query.exec(QString("update dbo.book set book_name='%1' where book_id ='%2'").arg(book_name, bookId)))
         qDebug() << query.lastError();
     else
         printAllBook();

     /* Insert one record */
     qDebug() << "Insert\nPlease input the bookID, name, company, author and price:";
     std::string sBookID, sName, sCompany, sAuthor, sPrice;
     std::cin >> sBookID >> sName >> sCompany >> sAuthor >> sPrice;
     bookId = QString::fromStdString(sBookID);
     bookName = QString::fromStdString(sName);
     bookCompany = QString::fromStdString(sCompany);
     bookAuthor = QString::fromStdString(sAuthor);
     bookPrice = QString::fromStdString(sPrice);
     if (false == query.exec(QString("insert into dbo.book values('%1', '%2', '%3', '%4', '%5')")
                             .arg(bookId, bookName, bookCompany, bookAuthor, bookPrice)))
         qDebug() << query.lastError();
     else
         printAllBook();


    return a.exec();
}
