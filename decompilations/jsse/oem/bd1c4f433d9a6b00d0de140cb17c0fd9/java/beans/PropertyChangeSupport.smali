.class public Ljava/beans/PropertyChangeSupport;
.super Ljava/lang/Object;
.source "PropertyChangeSupport.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;
    }
.end annotation


# static fields
.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field static final serialVersionUID:J = 0x58d5d264574860bbL


# instance fields
.field private map:Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;

.field private source:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 491
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    .line 492
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "children"

    const-class v3, Ljava/util/Hashtable;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 493
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "source"

    const-class v3, Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 494
    new-instance v1, Ljava/io/ObjectStreamField;

    const-string/jumbo v2, "propertyChangeSupportSerializedDataVersion"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 491
    sput-object v0, Ljava/beans/PropertyChangeSupport;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 4
    .param p1, "sourceBean"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;

    invoke-direct {v0, v1}, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;-><init>(Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;)V

    iput-object v0, p0, Ljava/beans/PropertyChangeSupport;->map:Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;

    .line 90
    if-nez p1, :cond_13

    .line 91
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 93
    :cond_13
    iput-object p1, p0, Ljava/beans/PropertyChangeSupport;->source:Ljava/lang/Object;

    .line 94
    return-void
.end method

.method private static fire([Ljava/beans/PropertyChangeListener;Ljava/beans/PropertyChangeEvent;)V
    .registers 5
    .param p0, "listeners"    # [Ljava/beans/PropertyChangeListener;
    .param p1, "event"    # Ljava/beans/PropertyChangeEvent;

    .prologue
    .line 333
    if-eqz p0, :cond_e

    .line 334
    const/4 v1, 0x0

    array-length v2, p0

    :goto_4
    if-ge v1, v2, :cond_e

    aget-object v0, p0, v1

    .line 335
    .local v0, "listener":Ljava/beans/PropertyChangeListener;
    invoke-interface {v0, p1}, Ljava/beans/PropertyChangeListener;->propertyChange(Ljava/beans/PropertyChangeEvent;)V

    .line 334
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 338
    .end local v0    # "listener":Ljava/beans/PropertyChangeListener;
    :cond_e
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 13
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 459
    new-instance v6, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;

    invoke-direct {v6, v8}, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;-><init>(Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;)V

    iput-object v6, p0, Ljava/beans/PropertyChangeSupport;->map:Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;

    .line 461
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v3

    .line 464
    .local v3, "fields":Ljava/io/ObjectInputStream$GetField;
    const-string/jumbo v6, "children"

    invoke-virtual {v3, v6, v8}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    .line 465
    .local v0, "children":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/beans/PropertyChangeSupport;>;"
    const-string/jumbo v6, "source"

    invoke-virtual {v3, v6, v8}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, p0, Ljava/beans/PropertyChangeSupport;->source:Ljava/lang/Object;

    .line 466
    const-string/jumbo v6, "propertyChangeSupportSerializedDataVersion"

    const/4 v7, 0x2

    invoke-virtual {v3, v6, v7}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    .line 469
    :goto_25
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    .local v5, "listenerOrNull":Ljava/lang/Object;
    if-eqz v5, :cond_33

    .line 470
    iget-object v6, p0, Ljava/beans/PropertyChangeSupport;->map:Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;

    check-cast v5, Ljava/beans/PropertyChangeListener;

    .end local v5    # "listenerOrNull":Ljava/lang/Object;
    invoke-virtual {v6, v8, v5}, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;->add(Ljava/lang/String;Ljava/util/EventListener;)V

    goto :goto_25

    .line 472
    .restart local v5    # "listenerOrNull":Ljava/lang/Object;
    :cond_33
    if-eqz v0, :cond_69

    .line 473
    invoke-virtual {v0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "entry$iterator":Ljava/util/Iterator;
    :cond_3d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_69

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 474
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/beans/PropertyChangeSupport;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v6}, Ljava/beans/PropertyChangeSupport;->getPropertyChangeListeners()[Ljava/beans/PropertyChangeListener;

    move-result-object v8

    const/4 v6, 0x0

    array-length v9, v8

    move v7, v6

    :goto_56
    if-ge v7, v9, :cond_3d

    aget-object v4, v8, v7

    .line 475
    .local v4, "listener":Ljava/beans/PropertyChangeListener;
    iget-object v10, p0, Ljava/beans/PropertyChangeSupport;->map:Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v10, v6, v4}, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;->add(Ljava/lang/String;Ljava/util/EventListener;)V

    .line 474
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_56

    .line 479
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/beans/PropertyChangeSupport;>;"
    .end local v2    # "entry$iterator":Ljava/util/Iterator;
    .end local v4    # "listener":Ljava/beans/PropertyChangeListener;
    :cond_69
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 17
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v14, 0x0

    .line 425
    const/4 v1, 0x0

    .line 426
    .local v1, "children":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/beans/PropertyChangeSupport;>;"
    const/4 v7, 0x0

    .line 427
    .local v7, "listeners":[Ljava/beans/PropertyChangeListener;
    iget-object v11, p0, Ljava/beans/PropertyChangeSupport;->map:Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;

    monitor-enter v11

    .line 428
    :try_start_6
    iget-object v10, p0, Ljava/beans/PropertyChangeSupport;->map:Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;

    invoke-virtual {v10}, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;->getEntries()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_4e

    move-result-object v4

    .local v4, "entry$iterator":Ljava/util/Iterator;
    move-object v2, v1

    .end local v1    # "children":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/beans/PropertyChangeSupport;>;"
    .end local v7    # "listeners":[Ljava/beans/PropertyChangeListener;
    .local v2, "children":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/beans/PropertyChangeSupport;>;"
    :goto_11
    :try_start_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_51

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 429
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/beans/PropertyChangeListener;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 430
    .local v9, "property":Ljava/lang/String;
    if-nez v9, :cond_30

    .line 431
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, [Ljava/beans/PropertyChangeListener;

    move-object v7, v0

    .local v7, "listeners":[Ljava/beans/PropertyChangeListener;
    move-object v1, v2

    .end local v2    # "children":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/beans/PropertyChangeSupport;>;"
    .end local v7    # "listeners":[Ljava/beans/PropertyChangeListener;
    .local v1, "children":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/beans/PropertyChangeSupport;>;"
    :goto_2e
    move-object v2, v1

    .end local v1    # "children":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/beans/PropertyChangeSupport;>;"
    .restart local v2    # "children":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/beans/PropertyChangeSupport;>;"
    goto :goto_11

    .line 433
    :cond_30
    if-nez v2, :cond_8b

    .line 434
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V
    :try_end_37
    .catchall {:try_start_11 .. :try_end_37} :catchall_88

    .line 436
    .end local v2    # "children":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/beans/PropertyChangeSupport;>;"
    .restart local v1    # "children":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/beans/PropertyChangeSupport;>;"
    :goto_37
    :try_start_37
    new-instance v8, Ljava/beans/PropertyChangeSupport;

    iget-object v10, p0, Ljava/beans/PropertyChangeSupport;->source:Ljava/lang/Object;

    invoke-direct {v8, v10}, Ljava/beans/PropertyChangeSupport;-><init>(Ljava/lang/Object;)V

    .line 437
    .local v8, "pcs":Ljava/beans/PropertyChangeSupport;
    iget-object v12, v8, Ljava/beans/PropertyChangeSupport;->map:Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/beans/PropertyChangeListener;

    const/4 v13, 0x0

    invoke-virtual {v12, v13, v10}, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;->set(Ljava/lang/String;[Ljava/util/EventListener;)V

    .line 438
    invoke-virtual {v1, v9, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4d
    .catchall {:try_start_37 .. :try_end_4d} :catchall_4e

    goto :goto_2e

    .line 427
    .end local v1    # "children":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/beans/PropertyChangeSupport;>;"
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/beans/PropertyChangeListener;>;"
    .end local v4    # "entry$iterator":Ljava/util/Iterator;
    .end local v8    # "pcs":Ljava/beans/PropertyChangeSupport;
    .end local v9    # "property":Ljava/lang/String;
    :catchall_4e
    move-exception v10

    :goto_4f
    monitor-exit v11

    throw v10

    .restart local v2    # "children":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/beans/PropertyChangeSupport;>;"
    .restart local v4    # "entry$iterator":Ljava/util/Iterator;
    :cond_51
    monitor-exit v11

    .line 442
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v5

    .line 443
    .local v5, "fields":Ljava/io/ObjectOutputStream$PutField;
    const-string/jumbo v10, "children"

    invoke-virtual {v5, v10, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 444
    const-string/jumbo v10, "source"

    iget-object v11, p0, Ljava/beans/PropertyChangeSupport;->source:Ljava/lang/Object;

    invoke-virtual {v5, v10, v11}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 445
    const-string/jumbo v10, "propertyChangeSupportSerializedDataVersion"

    const/4 v11, 0x2

    invoke-virtual {v5, v10, v11}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 446
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 448
    if-eqz v7, :cond_82

    .line 449
    const/4 v10, 0x0

    array-length v11, v7

    :goto_72
    if-ge v10, v11, :cond_82

    aget-object v6, v7, v10

    .line 450
    .local v6, "l":Ljava/beans/PropertyChangeListener;
    instance-of v12, v6, Ljava/io/Serializable;

    if-eqz v12, :cond_7f

    .line 451
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 449
    :cond_7f
    add-int/lit8 v10, v10, 0x1

    goto :goto_72

    .line 455
    .end local v6    # "l":Ljava/beans/PropertyChangeListener;
    :cond_82
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 456
    return-void

    .line 427
    .end local v5    # "fields":Ljava/io/ObjectOutputStream$PutField;
    :catchall_88
    move-exception v10

    move-object v1, v2

    .end local v2    # "children":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/beans/PropertyChangeSupport;>;"
    .restart local v1    # "children":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/beans/PropertyChangeSupport;>;"
    goto :goto_4f

    .end local v1    # "children":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/beans/PropertyChangeSupport;>;"
    .restart local v2    # "children":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/beans/PropertyChangeSupport;>;"
    .restart local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/beans/PropertyChangeListener;>;"
    .restart local v9    # "property":Ljava/lang/String;
    :cond_8b
    move-object v1, v2

    .end local v2    # "children":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/beans/PropertyChangeSupport;>;"
    .restart local v1    # "children":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/beans/PropertyChangeSupport;>;"
    goto :goto_37
.end method


# virtual methods
.method public addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .registers 5
    .param p1, "listener"    # Ljava/beans/PropertyChangeListener;

    .prologue
    const/4 v2, 0x0

    .line 107
    if-nez p1, :cond_4

    .line 108
    return-void

    .line 110
    :cond_4
    instance-of v1, p1, Ljava/beans/PropertyChangeListenerProxy;

    if-eqz v1, :cond_19

    move-object v0, p1

    .line 112
    check-cast v0, Ljava/beans/PropertyChangeListenerProxy;

    .line 114
    .local v0, "proxy":Ljava/beans/PropertyChangeListenerProxy;
    invoke-virtual {v0}, Ljava/beans/PropertyChangeListenerProxy;->getPropertyName()Ljava/lang/String;

    move-result-object v2

    .line 115
    invoke-virtual {v0}, Ljava/beans/PropertyChangeListenerProxy;->getListener()Ljava/util/EventListener;

    move-result-object v1

    check-cast v1, Ljava/beans/PropertyChangeListener;

    .line 114
    invoke-virtual {p0, v2, v1}, Ljava/beans/PropertyChangeSupport;->addPropertyChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V

    .line 119
    .end local v0    # "proxy":Ljava/beans/PropertyChangeListenerProxy;
    :goto_18
    return-void

    .line 117
    :cond_19
    iget-object v1, p0, Ljava/beans/PropertyChangeSupport;->map:Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;

    invoke-virtual {v1, v2, p1}, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;->add(Ljava/lang/String;Ljava/util/EventListener;)V

    goto :goto_18
.end method

.method public addPropertyChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V
    .registers 4
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "listener"    # Ljava/beans/PropertyChangeListener;

    .prologue
    .line 198
    if-eqz p2, :cond_4

    if-nez p1, :cond_5

    .line 199
    :cond_4
    return-void

    .line 201
    :cond_5
    iget-object v0, p0, Ljava/beans/PropertyChangeSupport;->map:Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;

    invoke-virtual {v0, p2}, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;->extract(Ljava/beans/PropertyChangeListener;)Ljava/beans/PropertyChangeListener;

    move-result-object p2

    .line 202
    if-eqz p2, :cond_12

    .line 203
    iget-object v0, p0, Ljava/beans/PropertyChangeSupport;->map:Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;

    invoke-virtual {v0, p1, p2}, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;->add(Ljava/lang/String;Ljava/util/EventListener;)V

    .line 205
    :cond_12
    return-void
.end method

.method public fireIndexedPropertyChange(Ljava/lang/String;III)V
    .registers 7
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "oldValue"    # I
    .param p4, "newValue"    # I

    .prologue
    .line 379
    if-eq p3, p4, :cond_d

    .line 380
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v0, v1}, Ljava/beans/PropertyChangeSupport;->fireIndexedPropertyChange(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    .line 382
    :cond_d
    return-void
.end method

.method public fireIndexedPropertyChange(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V
    .registers 11
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "oldValue"    # Ljava/lang/Object;
    .param p4, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 357
    if-eqz p3, :cond_4

    if-nez p4, :cond_13

    .line 358
    :cond_4
    :goto_4
    new-instance v0, Ljava/beans/IndexedPropertyChangeEvent;

    iget-object v1, p0, Ljava/beans/PropertyChangeSupport;->source:Ljava/lang/Object;

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ljava/beans/IndexedPropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    .line 360
    :cond_12
    return-void

    .line 357
    :cond_13
    invoke-virtual {p3, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_12

    goto :goto_4
.end method

.method public fireIndexedPropertyChange(Ljava/lang/String;IZZ)V
    .registers 7
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "oldValue"    # Z
    .param p4, "newValue"    # Z

    .prologue
    .line 401
    if-eq p3, p4, :cond_d

    .line 402
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v0, v1}, Ljava/beans/PropertyChangeSupport;->fireIndexedPropertyChange(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    .line 404
    :cond_d
    return-void
.end method

.method public firePropertyChange(Ljava/beans/PropertyChangeEvent;)V
    .registers 9
    .param p1, "event"    # Ljava/beans/PropertyChangeEvent;

    .prologue
    const/4 v6, 0x0

    .line 317
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getOldValue()Ljava/lang/Object;

    move-result-object v4

    .line 318
    .local v4, "oldValue":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getNewValue()Ljava/lang/Object;

    move-result-object v3

    .line 319
    .local v3, "newValue":Ljava/lang/Object;
    if-eqz v4, :cond_d

    if-nez v3, :cond_2a

    .line 320
    :cond_d
    :goto_d
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getPropertyName()Ljava/lang/String;

    move-result-object v1

    .line 322
    .local v1, "name":Ljava/lang/String;
    iget-object v5, p0, Ljava/beans/PropertyChangeSupport;->map:Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;

    invoke-virtual {v5, v6}, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;->get(Ljava/lang/String;)[Ljava/util/EventListener;

    move-result-object v0

    check-cast v0, [Ljava/beans/PropertyChangeListener;

    .line 323
    .local v0, "common":[Ljava/beans/PropertyChangeListener;
    if-eqz v1, :cond_33

    .line 324
    iget-object v5, p0, Ljava/beans/PropertyChangeSupport;->map:Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;

    invoke-virtual {v5, v1}, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;->get(Ljava/lang/String;)[Ljava/util/EventListener;

    move-result-object v2

    check-cast v2, [Ljava/beans/PropertyChangeListener;

    .line 327
    :goto_23
    invoke-static {v0, p1}, Ljava/beans/PropertyChangeSupport;->fire([Ljava/beans/PropertyChangeListener;Ljava/beans/PropertyChangeEvent;)V

    .line 328
    invoke-static {v2, p1}, Ljava/beans/PropertyChangeSupport;->fire([Ljava/beans/PropertyChangeListener;Ljava/beans/PropertyChangeEvent;)V

    .line 330
    .end local v0    # "common":[Ljava/beans/PropertyChangeListener;
    .end local v1    # "name":Ljava/lang/String;
    :cond_29
    return-void

    .line 319
    :cond_2a
    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_29

    goto :goto_d

    .line 325
    .restart local v0    # "common":[Ljava/beans/PropertyChangeListener;
    .restart local v1    # "name":Ljava/lang/String;
    :cond_33
    const/4 v2, 0x0

    .local v2, "named":[Ljava/beans/PropertyChangeListener;
    goto :goto_23
.end method

.method public firePropertyChange(Ljava/lang/String;II)V
    .registers 6
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "oldValue"    # I
    .param p3, "newValue"    # I

    .prologue
    .line 282
    if-eq p2, p3, :cond_d

    .line 283
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 285
    :cond_d
    return-void
.end method

.method public firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "oldValue"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 262
    if-eqz p2, :cond_4

    if-nez p3, :cond_f

    .line 263
    :cond_4
    :goto_4
    new-instance v0, Ljava/beans/PropertyChangeEvent;

    iget-object v1, p0, Ljava/beans/PropertyChangeSupport;->source:Ljava/lang/Object;

    invoke-direct {v0, v1, p1, p2, p3}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    .line 265
    :cond_e
    return-void

    .line 262
    :cond_f
    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_e

    goto :goto_4
.end method

.method public firePropertyChange(Ljava/lang/String;ZZ)V
    .registers 6
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "oldValue"    # Z
    .param p3, "newValue"    # Z

    .prologue
    .line 302
    if-eq p2, p3, :cond_d

    .line 303
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 305
    :cond_d
    return-void
.end method

.method public getPropertyChangeListeners()[Ljava/beans/PropertyChangeListener;
    .registers 2

    .prologue
    .line 179
    iget-object v0, p0, Ljava/beans/PropertyChangeSupport;->map:Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;

    invoke-virtual {v0}, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;->getListeners()[Ljava/util/EventListener;

    move-result-object v0

    check-cast v0, [Ljava/beans/PropertyChangeListener;

    return-object v0
.end method

.method public getPropertyChangeListeners(Ljava/lang/String;)[Ljava/beans/PropertyChangeListener;
    .registers 3
    .param p1, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 244
    iget-object v0, p0, Ljava/beans/PropertyChangeSupport;->map:Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;

    invoke-virtual {v0, p1}, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;->getListeners(Ljava/lang/String;)[Ljava/util/EventListener;

    move-result-object v0

    check-cast v0, [Ljava/beans/PropertyChangeListener;

    return-object v0
.end method

.method public hasListeners(Ljava/lang/String;)Z
    .registers 3
    .param p1, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 415
    iget-object v0, p0, Ljava/beans/PropertyChangeSupport;->map:Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;

    invoke-virtual {v0, p1}, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;->hasListeners(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .registers 5
    .param p1, "listener"    # Ljava/beans/PropertyChangeListener;

    .prologue
    const/4 v2, 0x0

    .line 133
    if-nez p1, :cond_4

    .line 134
    return-void

    .line 136
    :cond_4
    instance-of v1, p1, Ljava/beans/PropertyChangeListenerProxy;

    if-eqz v1, :cond_19

    move-object v0, p1

    .line 138
    check-cast v0, Ljava/beans/PropertyChangeListenerProxy;

    .line 140
    .local v0, "proxy":Ljava/beans/PropertyChangeListenerProxy;
    invoke-virtual {v0}, Ljava/beans/PropertyChangeListenerProxy;->getPropertyName()Ljava/lang/String;

    move-result-object v2

    .line 141
    invoke-virtual {v0}, Ljava/beans/PropertyChangeListenerProxy;->getListener()Ljava/util/EventListener;

    move-result-object v1

    check-cast v1, Ljava/beans/PropertyChangeListener;

    .line 140
    invoke-virtual {p0, v2, v1}, Ljava/beans/PropertyChangeSupport;->removePropertyChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V

    .line 145
    .end local v0    # "proxy":Ljava/beans/PropertyChangeListenerProxy;
    :goto_18
    return-void

    .line 143
    :cond_19
    iget-object v1, p0, Ljava/beans/PropertyChangeSupport;->map:Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;

    invoke-virtual {v1, v2, p1}, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;->remove(Ljava/lang/String;Ljava/util/EventListener;)V

    goto :goto_18
.end method

.method public removePropertyChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V
    .registers 4
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "listener"    # Ljava/beans/PropertyChangeListener;

    .prologue
    .line 223
    if-eqz p2, :cond_4

    if-nez p1, :cond_5

    .line 224
    :cond_4
    return-void

    .line 226
    :cond_5
    iget-object v0, p0, Ljava/beans/PropertyChangeSupport;->map:Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;

    invoke-virtual {v0, p2}, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;->extract(Ljava/beans/PropertyChangeListener;)Ljava/beans/PropertyChangeListener;

    move-result-object p2

    .line 227
    if-eqz p2, :cond_12

    .line 228
    iget-object v0, p0, Ljava/beans/PropertyChangeSupport;->map:Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;

    invoke-virtual {v0, p1, p2}, Ljava/beans/PropertyChangeSupport$PropertyChangeListenerMap;->remove(Ljava/lang/String;Ljava/util/EventListener;)V

    .line 230
    :cond_12
    return-void
.end method
