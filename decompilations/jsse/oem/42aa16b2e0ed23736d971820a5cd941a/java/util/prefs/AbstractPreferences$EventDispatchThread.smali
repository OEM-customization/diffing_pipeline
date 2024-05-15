.class Ljava/util/prefs/AbstractPreferences$EventDispatchThread;
.super Ljava/lang/Thread;
.source "AbstractPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/prefs/AbstractPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EventDispatchThread"
.end annotation


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 1503
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/prefs/AbstractPreferences$1;)V
    .registers 2
    .param p1, "x0"    # Ljava/util/prefs/AbstractPreferences$1;

    .line 1503
    invoke-direct {p0}, Ljava/util/prefs/AbstractPreferences$EventDispatchThread;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api run()V
    .registers 7

    .line 1507
    :goto_0
    const/4 v0, 0x0

    .line 1508
    .local v0, "event":Ljava/util/EventObject;
    # getter for: Ljava/util/prefs/AbstractPreferences;->eventQueue:Ljava/util/List;
    invoke-static {}, Ljava/util/prefs/AbstractPreferences;->access$100()Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 1510
    :goto_6
    :try_start_6
    # getter for: Ljava/util/prefs/AbstractPreferences;->eventQueue:Ljava/util/List;
    invoke-static {}, Ljava/util/prefs/AbstractPreferences;->access$100()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1511
    # getter for: Ljava/util/prefs/AbstractPreferences;->eventQueue:Ljava/util/List;
    invoke-static {}, Ljava/util/prefs/AbstractPreferences;->access$100()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    goto :goto_6

    .line 1512
    :cond_18
    # getter for: Ljava/util/prefs/AbstractPreferences;->eventQueue:Ljava/util/List;
    invoke-static {}, Ljava/util/prefs/AbstractPreferences;->access$100()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/EventObject;
    :try_end_23
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_23} :catch_6b
    .catchall {:try_start_6 .. :try_end_23} :catchall_69

    move-object v0, v2

    .line 1516
    nop

    .line 1517
    :try_start_25
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_69

    .line 1520
    invoke-virtual {v0}, Ljava/util/EventObject;->getSource()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/prefs/AbstractPreferences;

    .line 1521
    .local v1, "src":Ljava/util/prefs/AbstractPreferences;
    instance-of v2, v0, Ljava/util/prefs/PreferenceChangeEvent;

    if-eqz v2, :cond_44

    .line 1522
    move-object v2, v0

    check-cast v2, Ljava/util/prefs/PreferenceChangeEvent;

    .line 1523
    .local v2, "pce":Ljava/util/prefs/PreferenceChangeEvent;
    invoke-virtual {v1}, Ljava/util/prefs/AbstractPreferences;->prefListeners()[Ljava/util/prefs/PreferenceChangeListener;

    move-result-object v3

    .line 1524
    .local v3, "listeners":[Ljava/util/prefs/PreferenceChangeListener;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_38
    array-length v5, v3

    if-ge v4, v5, :cond_43

    .line 1525
    aget-object v5, v3, v4

    invoke-interface {v5, v2}, Ljava/util/prefs/PreferenceChangeListener;->preferenceChange(Ljava/util/prefs/PreferenceChangeEvent;)V

    .line 1524
    add-int/lit8 v4, v4, 0x1

    goto :goto_38

    .line 1526
    .end local v2    # "pce":Ljava/util/prefs/PreferenceChangeEvent;
    .end local v3    # "listeners":[Ljava/util/prefs/PreferenceChangeListener;
    .end local v4    # "i":I
    :cond_43
    goto :goto_68

    .line 1527
    :cond_44
    move-object v2, v0

    check-cast v2, Ljava/util/prefs/NodeChangeEvent;

    .line 1528
    .local v2, "nce":Ljava/util/prefs/NodeChangeEvent;
    invoke-virtual {v1}, Ljava/util/prefs/AbstractPreferences;->nodeListeners()[Ljava/util/prefs/NodeChangeListener;

    move-result-object v3

    .line 1529
    .local v3, "listeners":[Ljava/util/prefs/NodeChangeListener;
    instance-of v4, v2, Ljava/util/prefs/AbstractPreferences$NodeAddedEvent;

    if-eqz v4, :cond_5c

    .line 1530
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_50
    array-length v5, v3

    if-ge v4, v5, :cond_5b

    .line 1531
    aget-object v5, v3, v4

    invoke-interface {v5, v2}, Ljava/util/prefs/NodeChangeListener;->childAdded(Ljava/util/prefs/NodeChangeEvent;)V

    .line 1530
    add-int/lit8 v4, v4, 0x1

    goto :goto_50

    .end local v4    # "i":I
    :cond_5b
    goto :goto_68

    .line 1534
    :cond_5c
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_5d
    array-length v5, v3

    if-ge v4, v5, :cond_68

    .line 1535
    aget-object v5, v3, v4

    invoke-interface {v5, v2}, Ljava/util/prefs/NodeChangeListener;->childRemoved(Ljava/util/prefs/NodeChangeEvent;)V

    .line 1534
    add-int/lit8 v4, v4, 0x1

    goto :goto_5d

    .line 1538
    .end local v0    # "event":Ljava/util/EventObject;
    .end local v1    # "src":Ljava/util/prefs/AbstractPreferences;
    .end local v2    # "nce":Ljava/util/prefs/NodeChangeEvent;
    .end local v3    # "listeners":[Ljava/util/prefs/NodeChangeListener;
    .end local v4    # "i":I
    :cond_68
    :goto_68
    goto :goto_0

    .line 1517
    .restart local v0    # "event":Ljava/util/EventObject;
    :catchall_69
    move-exception v2

    goto :goto_6e

    .line 1513
    :catch_6b
    move-exception v2

    .line 1515
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_6c
    monitor-exit v1

    return-void

    .line 1517
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :goto_6e
    monitor-exit v1
    :try_end_6f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_69

    throw v2
.end method
