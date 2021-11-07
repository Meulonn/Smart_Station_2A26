#ifndef CLIENT_H
#define CLIENT_H
#include <QSqlDatabase>
#include<QString>
#include<QSqlQuery>
#include <QSqlError>
#include <QSqlQuery>
#include<QSqlQueryModel>
#include<QApplication>
#include<QMessageBox>
#include<QDebug>
#include <QDate>

class Client
{private:
    long client_cin;
    QString name;
    long phone_num;
    QDate birthday;
    int gender;
    QString email;
    QString adress;
  public:
    Client();
    Client(long ,QString,long,QDate,int,QString,QString);
    long get_cin();void set_cin(long);
    QString get_name();void set_name(QString);
    long get_num();void set_num(long);
    QDate get_birthday();void set_birthday(QDate);
    int get_gender();void set_gender(int);
    QString get_email();void set_email(QString);
    QString get_adress();void set_adress(QString);

   bool add_client();
   void view_client(Client);
   void update_client(Client*);
   void delete_client(Client*);
   void view_purchaseHistory(Client);
   void classify_client(Client);
   Client research_client(Client);
   void notify_about_delivery(Client);


};

#endif // CLIENT_H