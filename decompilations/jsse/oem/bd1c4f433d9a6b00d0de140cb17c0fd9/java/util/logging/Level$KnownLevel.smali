.class final Ljava/util/logging/Level$KnownLevel;
.super Ljava/lang/Object;
.source "Level.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/logging/Level;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "KnownLevel"
.end annotation


# static fields
.field private static intToLevels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/util/logging/Level$KnownLevel;",
            ">;>;"
        }
    .end annotation
.end field

.field private static nameToLevels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/util/logging/Level$KnownLevel;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field final levelObject:Ljava/util/logging/Level;

.field final mirroredLevel:Ljava/util/logging/Level;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 532
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljava/util/logging/Level$KnownLevel;->nameToLevels:Ljava/util/Map;

    .line 533
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljava/util/logging/Level$KnownLevel;->intToLevels:Ljava/util/Map;

    .line 531
    return-void
.end method

.method constructor <init>(Ljava/util/logging/Level;)V
    .registers 8
    .param p1, "l"    # Ljava/util/logging/Level;

    .prologue
    .line 536
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 537
    iput-object p1, p0, Ljava/util/logging/Level$KnownLevel;->levelObject:Ljava/util/logging/Level;

    .line 538
    invoke-virtual {p1}, Ljava/util/logging/Level;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/util/logging/Level;

    if-ne v0, v1, :cond_10

    .line 539
    iput-object p1, p0, Ljava/util/logging/Level$KnownLevel;->mirroredLevel:Ljava/util/logging/Level;

    .line 544
    :goto_f
    return-void

    .line 542
    :cond_10
    new-instance v0, Ljava/util/logging/Level;

    invoke-static {p1}, Ljava/util/logging/Level;->-get0(Ljava/util/logging/Level;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/util/logging/Level;->-get2(Ljava/util/logging/Level;)I

    move-result v2

    invoke-static {p1}, Ljava/util/logging/Level;->-get1(Ljava/util/logging/Level;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;ILjava/lang/String;ZLjava/util/logging/Level;)V

    iput-object v0, p0, Ljava/util/logging/Level$KnownLevel;->mirroredLevel:Ljava/util/logging/Level;

    goto :goto_f
.end method

.method static declared-synchronized add(Ljava/util/logging/Level;)V
    .registers 6
    .param p0, "l"    # Ljava/util/logging/Level;

    .prologue
    const-class v3, Ljava/util/logging/Level$KnownLevel;

    monitor-enter v3

    .line 549
    :try_start_3
    new-instance v1, Ljava/util/logging/Level$KnownLevel;

    invoke-direct {v1, p0}, Ljava/util/logging/Level$KnownLevel;-><init>(Ljava/util/logging/Level;)V

    .line 550
    .local v1, "o":Ljava/util/logging/Level$KnownLevel;
    sget-object v2, Ljava/util/logging/Level$KnownLevel;->nameToLevels:Ljava/util/Map;

    invoke-static {p0}, Ljava/util/logging/Level;->-get0(Ljava/util/logging/Level;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 551
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/logging/Level$KnownLevel;>;"
    if-nez v0, :cond_24

    .line 552
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/logging/Level$KnownLevel;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 553
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/logging/Level$KnownLevel;>;"
    sget-object v2, Ljava/util/logging/Level$KnownLevel;->nameToLevels:Ljava/util/Map;

    invoke-static {p0}, Ljava/util/logging/Level;->-get0(Ljava/util/logging/Level;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    :cond_24
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 557
    sget-object v2, Ljava/util/logging/Level$KnownLevel;->intToLevels:Ljava/util/Map;

    invoke-static {p0}, Ljava/util/logging/Level;->-get2(Ljava/util/logging/Level;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/logging/Level$KnownLevel;>;"
    check-cast v0, Ljava/util/List;

    .line 558
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/logging/Level$KnownLevel;>;"
    if-nez v0, :cond_4b

    .line 559
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/logging/Level$KnownLevel;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 560
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/logging/Level$KnownLevel;>;"
    sget-object v2, Ljava/util/logging/Level$KnownLevel;->intToLevels:Ljava/util/Map;

    invoke-static {p0}, Ljava/util/logging/Level;->-get2(Ljava/util/logging/Level;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    :cond_4b
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4e
    .catchall {:try_start_3 .. :try_end_4e} :catchall_50

    monitor-exit v3

    .line 563
    return-void

    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/logging/Level$KnownLevel;>;"
    .end local v1    # "o":Ljava/util/logging/Level$KnownLevel;
    :catchall_50
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method static declared-synchronized findByLocalizedLevelName(Ljava/lang/String;)Ljava/util/logging/Level$KnownLevel;
    .registers 8
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v6, Ljava/util/logging/Level$KnownLevel;

    monitor-enter v6

    .line 589
    :try_start_3
    sget-object v5, Ljava/util/logging/Level$KnownLevel;->nameToLevels:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "levels$iterator":Ljava/util/Iterator;
    :cond_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_37

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 590
    .local v2, "levels":Ljava/util/List;, "Ljava/util/List<Ljava/util/logging/Level$KnownLevel;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :cond_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/logging/Level$KnownLevel;

    .line 591
    .local v0, "l":Ljava/util/logging/Level$KnownLevel;
    iget-object v5, v0, Ljava/util/logging/Level$KnownLevel;->levelObject:Ljava/util/logging/Level;

    invoke-virtual {v5}, Ljava/util/logging/Level;->getLocalizedLevelName()Ljava/lang/String;

    move-result-object v4

    .line 592
    .local v4, "lname":Ljava/lang/String;
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_3a

    move-result v5

    if-eqz v5, :cond_1d

    monitor-exit v6

    .line 593
    return-object v0

    .line 597
    .end local v0    # "l":Ljava/util/logging/Level$KnownLevel;
    .end local v1    # "l$iterator":Ljava/util/Iterator;
    .end local v2    # "levels":Ljava/util/List;, "Ljava/util/List<Ljava/util/logging/Level$KnownLevel;>;"
    .end local v4    # "lname":Ljava/lang/String;
    :cond_37
    const/4 v5, 0x0

    monitor-exit v6

    return-object v5

    .end local v3    # "levels$iterator":Ljava/util/Iterator;
    :catchall_3a
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method static declared-synchronized findByName(Ljava/lang/String;)Ljava/util/logging/Level$KnownLevel;
    .registers 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const-class v2, Ljava/util/logging/Level$KnownLevel;

    monitor-enter v2

    .line 567
    :try_start_4
    sget-object v1, Ljava/util/logging/Level$KnownLevel;->nameToLevels:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 568
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/logging/Level$KnownLevel;>;"
    if-eqz v0, :cond_17

    .line 569
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/logging/Level$KnownLevel;
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_19

    monitor-exit v2

    return-object v1

    :cond_17
    monitor-exit v2

    .line 571
    return-object v3

    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/logging/Level$KnownLevel;>;"
    :catchall_19
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method static declared-synchronized findByValue(I)Ljava/util/logging/Level$KnownLevel;
    .registers 6
    .param p0, "value"    # I

    .prologue
    const/4 v4, 0x0

    const-class v2, Ljava/util/logging/Level$KnownLevel;

    monitor-enter v2

    .line 576
    :try_start_4
    sget-object v1, Ljava/util/logging/Level$KnownLevel;->intToLevels:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 577
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/logging/Level$KnownLevel;>;"
    if-eqz v0, :cond_1b

    .line 578
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/logging/Level$KnownLevel;
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_1d

    monitor-exit v2

    return-object v1

    :cond_1b
    monitor-exit v2

    .line 580
    return-object v4

    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/logging/Level$KnownLevel;>;"
    :catchall_1d
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method static declared-synchronized matches(Ljava/util/logging/Level;)Ljava/util/logging/Level$KnownLevel;
    .registers 10
    .param p0, "l"    # Ljava/util/logging/Level;

    .prologue
    const/4 v8, 0x0

    const-class v6, Ljava/util/logging/Level$KnownLevel;

    monitor-enter v6

    .line 601
    :try_start_4
    sget-object v5, Ljava/util/logging/Level$KnownLevel;->nameToLevels:Ljava/util/Map;

    invoke-static {p0}, Ljava/util/logging/Level;->-get0(Ljava/util/logging/Level;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 602
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/logging/Level$KnownLevel;>;"
    if-eqz v2, :cond_5a

    .line 603
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "level$iterator":Ljava/util/Iterator;
    :cond_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/logging/Level$KnownLevel;

    .line 604
    .local v0, "level":Ljava/util/logging/Level$KnownLevel;
    iget-object v3, v0, Ljava/util/logging/Level$KnownLevel;->mirroredLevel:Ljava/util/logging/Level;

    .line 605
    .local v3, "other":Ljava/util/logging/Level;
    iget-object v5, v0, Ljava/util/logging/Level$KnownLevel;->levelObject:Ljava/util/logging/Level;

    invoke-virtual {v5}, Ljava/util/logging/Level;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 606
    .local v4, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/logging/Level;>;"
    invoke-static {p0}, Ljava/util/logging/Level;->-get2(Ljava/util/logging/Level;)I

    move-result v5

    invoke-static {v3}, Ljava/util/logging/Level;->-get2(Ljava/util/logging/Level;)I

    move-result v7

    if-ne v5, v7, :cond_16

    .line 607
    invoke-static {p0}, Ljava/util/logging/Level;->-get1(Ljava/util/logging/Level;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3}, Ljava/util/logging/Level;->-get1(Ljava/util/logging/Level;)Ljava/lang/String;

    move-result-object v7

    if-eq v5, v7, :cond_52

    .line 608
    invoke-static {p0}, Ljava/util/logging/Level;->-get1(Ljava/util/logging/Level;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_16

    .line 609
    invoke-static {p0}, Ljava/util/logging/Level;->-get1(Ljava/util/logging/Level;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3}, Ljava/util/logging/Level;->-get1(Ljava/util/logging/Level;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 606
    if-eqz v5, :cond_16

    .line 610
    :cond_52
    invoke-virtual {p0}, Ljava/util/logging/Level;->getClass()Ljava/lang/Class;
    :try_end_55
    .catchall {:try_start_4 .. :try_end_55} :catchall_5c

    move-result-object v5

    if-ne v4, v5, :cond_16

    monitor-exit v6

    .line 611
    return-object v0

    .end local v0    # "level":Ljava/util/logging/Level$KnownLevel;
    .end local v1    # "level$iterator":Ljava/util/Iterator;
    .end local v3    # "other":Ljava/util/logging/Level;
    .end local v4    # "type":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/logging/Level;>;"
    :cond_5a
    monitor-exit v6

    .line 616
    return-object v8

    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/logging/Level$KnownLevel;>;"
    :catchall_5c
    move-exception v5

    monitor-exit v6

    throw v5
.end method
