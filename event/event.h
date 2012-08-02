#include <QDeclarativeItem>
#include <QString>

class Event : public QDeclarativeItem
{
    Q_OBJECT
    Q_PROPERTY(QString name READ name WRITE setName);

public:
    Event(QDeclarativeItem *parent = 0);
    ~Event();

    QString name();
    void setName(QString name);

    Q_INVOKABLE dispatchEvent(

private:
    QString m_name;
};

