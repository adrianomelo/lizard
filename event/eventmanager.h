#ifndef EVENTMANAGER_H
#define EVENTMANAGER_H

#include <QtDeclarative/QDeclarativeItem>

class EventManager : public QDeclarativeItem
{
    Q_OBJECT
    Q_DISABLE_COPY(EventManager)
    
public:
    EventManager(QDeclarativeItem *parent = 0);
    ~EventManager();
};

QML_DECLARE_TYPE(EventManager)

#endif // EVENTMANAGER_H

