#ifndef MAINWINDOW_H
#define MAINWINDOW_H
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
#include <QMainWindow>

QT_BEGIN_NAMESPACE
namespace Ui { class MainWindow; }
QT_END_NAMESPACE

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    MainWindow(QWidget *parent = nullptr);
    ~MainWindow();

private:
    Ui::MainWindow *ui;
};

#endif // MAINWINDOW_H
