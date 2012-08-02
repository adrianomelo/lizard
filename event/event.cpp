#include "event.h"
#include <QDeclarativeItem>

Event::Event(QDeclarativeItem *parent):
    QDeclarativeItem(parent)
{
    
}

Event::~Event()
{

}

QString Event::name()
{
    return m_name;
}

void Event::setName(QString name)
{
    m_name = name;
}

