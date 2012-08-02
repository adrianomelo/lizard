#include "event_plugin.h"
#include "eventmanager.h"

#include <QtDeclarative/qdeclarative.h>

void EventPlugin::registerTypes(const char *uri)
{
    // @uri com.adrianomelo.lizard.event
    qmlRegisterType<EventManager>(uri, 1, 0, "EventManager");
}

Q_EXPORT_PLUGIN2(Event, EventPlugin)

