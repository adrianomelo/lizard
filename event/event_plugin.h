#ifndef EVENT_PLUGIN_H
#define EVENT_PLUGIN_H

#include <QtDeclarative/QDeclarativeExtensionPlugin>

class EventPlugin : public QDeclarativeExtensionPlugin
{
    Q_OBJECT
    
public:
    void registerTypes(const char *uri);
};

#endif // EVENT_PLUGIN_H

