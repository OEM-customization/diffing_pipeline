.class Ljava/util/logging/LogManager$LoggerContext;
.super Ljava/lang/Object;
.source "LogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/logging/LogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoggerContext"
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private final greylist-max-o namedLoggers:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/util/logging/LogManager$LoggerWeakRef;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o root:Ljava/util/logging/LogManager$LogNode;

.field final synthetic blacklist this$0:Ljava/util/logging/LogManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 602
    const-class v0, Ljava/util/logging/LogManager;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/logging/LogManager;)V
    .registers 4
    .param p1, "this$0"    # Ljava/util/logging/LogManager;

    .line 607
    iput-object p1, p0, Ljava/util/logging/LogManager$LoggerContext;->this$0:Ljava/util/logging/LogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 604
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Ljava/util/logging/LogManager$LoggerContext;->namedLoggers:Ljava/util/Hashtable;

    .line 608
    new-instance v0, Ljava/util/logging/LogManager$LogNode;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Ljava/util/logging/LogManager$LogNode;-><init>(Ljava/util/logging/LogManager$LogNode;Ljava/util/logging/LogManager$LoggerContext;)V

    iput-object v0, p0, Ljava/util/logging/LogManager$LoggerContext;->root:Ljava/util/logging/LogManager$LogNode;

    .line 609
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/logging/LogManager;Ljava/util/logging/LogManager$1;)V
    .registers 3
    .param p1, "x0"    # Ljava/util/logging/LogManager;
    .param p2, "x1"    # Ljava/util/logging/LogManager$1;

    .line 602
    invoke-direct {p0, p1}, Ljava/util/logging/LogManager$LoggerContext;-><init>(Ljava/util/logging/LogManager;)V

    return-void
.end method

.method private greylist-max-o ensureAllDefaultLoggers(Ljava/util/logging/Logger;)V
    .registers 4
    .param p1, "logger"    # Ljava/util/logging/Logger;

    .line 692
    invoke-virtual {p0}, Ljava/util/logging/LogManager$LoggerContext;->requiresDefaultLoggers()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 693
    invoke-virtual {p1}, Ljava/util/logging/Logger;->getName()Ljava/lang/String;

    move-result-object v0

    .line 694
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_26

    .line 695
    invoke-virtual {p0}, Ljava/util/logging/LogManager$LoggerContext;->getRootLogger()Ljava/util/logging/Logger;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/util/logging/LogManager$LoggerContext;->ensureDefaultLogger(Ljava/util/logging/Logger;)V

    .line 696
    const-string v1, "global"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 697
    invoke-virtual {p0}, Ljava/util/logging/LogManager$LoggerContext;->getGlobalLogger()Ljava/util/logging/Logger;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/util/logging/LogManager$LoggerContext;->ensureDefaultLogger(Ljava/util/logging/Logger;)V

    .line 701
    .end local v0    # "name":Ljava/lang/String;
    :cond_26
    return-void
.end method

.method private greylist-max-o ensureDefaultLogger(Ljava/util/logging/Logger;)V
    .registers 4
    .param p1, "logger"    # Ljava/util/logging/Logger;

    .line 710
    invoke-virtual {p0}, Ljava/util/logging/LogManager$LoggerContext;->requiresDefaultLoggers()Z

    move-result v0

    if-eqz v0, :cond_26

    if-eqz p1, :cond_26

    sget-object v0, Ljava/util/logging/Logger;->global:Ljava/util/logging/Logger;

    if-eq p1, v0, :cond_15

    iget-object v0, p0, Ljava/util/logging/LogManager$LoggerContext;->this$0:Ljava/util/logging/LogManager;

    .line 711
    # getter for: Ljava/util/logging/LogManager;->rootLogger:Ljava/util/logging/Logger;
    invoke-static {v0}, Ljava/util/logging/LogManager;->access$600(Ljava/util/logging/LogManager;)Ljava/util/logging/Logger;

    move-result-object v0

    if-eq p1, v0, :cond_15

    goto :goto_26

    .line 724
    :cond_15
    iget-object v0, p0, Ljava/util/logging/LogManager$LoggerContext;->namedLoggers:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/util/logging/Logger;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 731
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/logging/LogManager$LoggerContext;->addLocalLogger(Ljava/util/logging/Logger;Z)Z

    .line 733
    :cond_25
    return-void

    .line 718
    :cond_26
    :goto_26
    nop

    .line 720
    return-void
.end method

.method private greylist-max-o ensureInitialized()V
    .registers 2

    .line 660
    invoke-virtual {p0}, Ljava/util/logging/LogManager$LoggerContext;->requiresDefaultLoggers()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 662
    invoke-virtual {p0}, Ljava/util/logging/LogManager$LoggerContext;->getRootLogger()Ljava/util/logging/Logger;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/logging/LogManager$LoggerContext;->ensureDefaultLogger(Ljava/util/logging/Logger;)V

    .line 663
    invoke-virtual {p0}, Ljava/util/logging/LogManager$LoggerContext;->getGlobalLogger()Ljava/util/logging/Logger;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/logging/LogManager$LoggerContext;->ensureDefaultLogger(Ljava/util/logging/Logger;)V

    .line 665
    :cond_14
    return-void
.end method

.method private greylist-max-o processParentHandlers(Ljava/util/logging/Logger;Ljava/lang/String;)V
    .registers 9
    .param p1, "logger"    # Ljava/util/logging/Logger;
    .param p2, "name"    # Ljava/lang/String;

    .line 832
    invoke-virtual {p0}, Ljava/util/logging/LogManager$LoggerContext;->getOwner()Ljava/util/logging/LogManager;

    move-result-object v0

    .line 833
    .local v0, "owner":Ljava/util/logging/LogManager;
    new-instance v1, Ljava/util/logging/LogManager$LoggerContext$1;

    invoke-direct {v1, p0, p1, v0, p2}, Ljava/util/logging/LogManager$LoggerContext$1;-><init>(Ljava/util/logging/LogManager$LoggerContext;Ljava/util/logging/Logger;Ljava/util/logging/LogManager;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 846
    const/4 v1, 0x1

    .line 848
    .local v1, "ix":I
    :goto_d
    const-string v2, "."

    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 849
    .local v2, "ix2":I
    if-gez v2, :cond_17

    .line 850
    nop

    .line 861
    .end local v2    # "ix2":I
    return-void

    .line 852
    .restart local v2    # "ix2":I
    :cond_17
    const/4 v3, 0x0

    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 853
    .local v3, "pname":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".level"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".handlers"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 854
    invoke-virtual {v0, v4}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4e

    .line 857
    :cond_4a
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Ljava/util/logging/LogManager$LoggerContext;->demandLogger(Ljava/lang/String;Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 859
    :cond_4e
    add-int/lit8 v1, v2, 0x1

    .line 860
    .end local v2    # "ix2":I
    .end local v3    # "pname":Ljava/lang/String;
    goto :goto_d
.end method


# virtual methods
.method greylist-max-o addLocalLogger(Ljava/util/logging/Logger;)Z
    .registers 3
    .param p1, "logger"    # Ljava/util/logging/Logger;

    .line 737
    invoke-virtual {p0}, Ljava/util/logging/LogManager$LoggerContext;->requiresDefaultLoggers()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Ljava/util/logging/LogManager$LoggerContext;->addLocalLogger(Ljava/util/logging/Logger;Z)Z

    move-result v0

    return v0
.end method

.method declared-synchronized greylist-max-o addLocalLogger(Ljava/util/logging/Logger;Z)Z
    .registers 12
    .param p1, "logger"    # Ljava/util/logging/Logger;
    .param p2, "addDefaultLoggersIfNeeded"    # Z

    monitor-enter p0

    .line 752
    if-eqz p2, :cond_6

    .line 753
    :try_start_3
    invoke-direct {p0, p1}, Ljava/util/logging/LogManager$LoggerContext;->ensureAllDefaultLoggers(Ljava/util/logging/Logger;)V

    .line 756
    .end local p0    # "this":Ljava/util/logging/LogManager$LoggerContext;
    :cond_6
    invoke-virtual {p1}, Ljava/util/logging/Logger;->getName()Ljava/lang/String;

    move-result-object v0

    .line 757
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_87

    .line 760
    iget-object v1, p0, Ljava/util/logging/LogManager$LoggerContext;->namedLoggers:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/logging/LogManager$LoggerWeakRef;

    .line 761
    .local v1, "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    if-eqz v1, :cond_23

    .line 762
    invoke-virtual {v1}, Ljava/util/logging/LogManager$LoggerWeakRef;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_20

    .line 766
    invoke-virtual {v1}, Ljava/util/logging/LogManager$LoggerWeakRef;->dispose()V
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_8d

    goto :goto_23

    .line 769
    :cond_20
    const/4 v2, 0x0

    monitor-exit p0

    return v2

    .line 775
    :cond_23
    :goto_23
    :try_start_23
    invoke-virtual {p0}, Ljava/util/logging/LogManager$LoggerContext;->getOwner()Ljava/util/logging/LogManager;

    move-result-object v2

    .line 776
    .local v2, "owner":Ljava/util/logging/LogManager;
    invoke-virtual {p1, v2}, Ljava/util/logging/Logger;->setLogManager(Ljava/util/logging/LogManager;)V

    .line 777
    new-instance v3, Ljava/util/logging/LogManager$LoggerWeakRef;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v3, v2, p1}, Ljava/util/logging/LogManager$LoggerWeakRef;-><init>(Ljava/util/logging/LogManager;Ljava/util/logging/Logger;)V

    move-object v1, v3

    .line 778
    iget-object v3, p0, Ljava/util/logging/LogManager$LoggerContext;->namedLoggers:Ljava/util/Hashtable;

    invoke-virtual {v3, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".level"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/LogManager;->getLevelProperty(Ljava/lang/String;Ljava/util/logging/Level;)Ljava/util/logging/Level;

    move-result-object v3

    .line 783
    .local v3, "level":Ljava/util/logging/Level;
    if-eqz v3, :cond_59

    invoke-virtual {p1}, Ljava/util/logging/Logger;->isLevelInitialized()Z

    move-result v4

    if-nez v4, :cond_59

    .line 784
    # invokes: Ljava/util/logging/LogManager;->doSetLevel(Ljava/util/logging/Logger;Ljava/util/logging/Level;)V
    invoke-static {p1, v3}, Ljava/util/logging/LogManager;->access$1200(Ljava/util/logging/Logger;Ljava/util/logging/Level;)V

    .line 790
    :cond_59
    invoke-direct {p0, p1, v0}, Ljava/util/logging/LogManager$LoggerContext;->processParentHandlers(Ljava/util/logging/Logger;Ljava/lang/String;)V

    .line 793
    invoke-virtual {p0, v0}, Ljava/util/logging/LogManager$LoggerContext;->getNode(Ljava/lang/String;)Ljava/util/logging/LogManager$LogNode;

    move-result-object v4

    .line 794
    .local v4, "node":Ljava/util/logging/LogManager$LogNode;
    iput-object v1, v4, Ljava/util/logging/LogManager$LogNode;->loggerRef:Ljava/util/logging/LogManager$LoggerWeakRef;

    .line 795
    const/4 v5, 0x0

    .line 796
    .local v5, "parent":Ljava/util/logging/Logger;
    iget-object v6, v4, Ljava/util/logging/LogManager$LogNode;->parent:Ljava/util/logging/LogManager$LogNode;

    .line 797
    .local v6, "nodep":Ljava/util/logging/LogManager$LogNode;
    :goto_65
    if-eqz v6, :cond_79

    .line 798
    iget-object v7, v6, Ljava/util/logging/LogManager$LogNode;->loggerRef:Ljava/util/logging/LogManager$LoggerWeakRef;

    .line 799
    .local v7, "nodeRef":Ljava/util/logging/LogManager$LoggerWeakRef;
    if-eqz v7, :cond_75

    .line 800
    invoke-virtual {v7}, Ljava/util/logging/LogManager$LoggerWeakRef;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/logging/Logger;

    move-object v5, v8

    .line 801
    if-eqz v5, :cond_75

    .line 802
    goto :goto_79

    .line 805
    :cond_75
    iget-object v8, v6, Ljava/util/logging/LogManager$LogNode;->parent:Ljava/util/logging/LogManager$LogNode;

    move-object v6, v8

    .line 806
    .end local v7    # "nodeRef":Ljava/util/logging/LogManager$LoggerWeakRef;
    goto :goto_65

    .line 808
    :cond_79
    :goto_79
    if-eqz v5, :cond_7e

    .line 809
    # invokes: Ljava/util/logging/LogManager;->doSetParent(Ljava/util/logging/Logger;Ljava/util/logging/Logger;)V
    invoke-static {p1, v5}, Ljava/util/logging/LogManager;->access$1300(Ljava/util/logging/Logger;Ljava/util/logging/Logger;)V

    .line 812
    :cond_7e
    invoke-virtual {v4, p1}, Ljava/util/logging/LogManager$LogNode;->walkAndSetParent(Ljava/util/logging/Logger;)V

    .line 814
    invoke-virtual {v1, v4}, Ljava/util/logging/LogManager$LoggerWeakRef;->setNode(Ljava/util/logging/LogManager$LogNode;)V
    :try_end_84
    .catchall {:try_start_23 .. :try_end_84} :catchall_8d

    .line 815
    const/4 v7, 0x1

    monitor-exit p0

    return v7

    .line 758
    .end local v1    # "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    .end local v2    # "owner":Ljava/util/logging/LogManager;
    .end local v3    # "level":Ljava/util/logging/Level;
    .end local v4    # "node":Ljava/util/logging/LogManager$LogNode;
    .end local v5    # "parent":Ljava/util/logging/Logger;
    .end local v6    # "nodep":Ljava/util/logging/LogManager$LogNode;
    :cond_87
    :try_start_87
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1
    :try_end_8d
    .catchall {:try_start_87 .. :try_end_8d} :catchall_8d

    .line 751
    .end local v0    # "name":Ljava/lang/String;
    .end local p1    # "logger":Ljava/util/logging/Logger;
    .end local p2    # "addDefaultLoggersIfNeeded":Z
    :catchall_8d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method greylist-max-o demandLogger(Ljava/lang/String;Ljava/lang/String;)Ljava/util/logging/Logger;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "resourceBundleName"    # Ljava/lang/String;

    .line 647
    invoke-virtual {p0}, Ljava/util/logging/LogManager$LoggerContext;->getOwner()Ljava/util/logging/LogManager;

    move-result-object v0

    .line 648
    .local v0, "owner":Ljava/util/logging/LogManager;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Ljava/util/logging/LogManager;->demandLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v1

    return-object v1
.end method

.method declared-synchronized greylist-max-o findLogger(Ljava/lang/String;)Ljava/util/logging/Logger;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    monitor-enter p0

    .line 671
    :try_start_1
    invoke-direct {p0}, Ljava/util/logging/LogManager$LoggerContext;->ensureInitialized()V

    .line 672
    iget-object v0, p0, Ljava/util/logging/LogManager$LoggerContext;->namedLoggers:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/logging/LogManager$LoggerWeakRef;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_1e

    .line 673
    .local v0, "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    if-nez v0, :cond_11

    .line 674
    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    .line 676
    :cond_11
    :try_start_11
    invoke-virtual {v0}, Ljava/util/logging/LogManager$LoggerWeakRef;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/logging/Logger;

    .line 677
    .local v1, "logger":Ljava/util/logging/Logger;
    if-nez v1, :cond_1c

    .line 680
    invoke-virtual {v0}, Ljava/util/logging/LogManager$LoggerWeakRef;->dispose()V
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_1e

    .line 682
    .end local p0    # "this":Ljava/util/logging/LogManager$LoggerContext;
    :cond_1c
    monitor-exit p0

    return-object v1

    .line 670
    .end local v0    # "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    .end local v1    # "logger":Ljava/util/logging/Logger;
    .end local p1    # "name":Ljava/lang/String;
    :catchall_1e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final greylist-max-o getGlobalLogger()Ljava/util/logging/Logger;
    .registers 2

    .line 640
    sget-object v0, Ljava/util/logging/Logger;->global:Ljava/util/logging/Logger;

    .line 641
    .local v0, "global":Ljava/util/logging/Logger;
    return-object v0
.end method

.method declared-synchronized greylist-max-o getLoggerNames()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 825
    :try_start_1
    invoke-direct {p0}, Ljava/util/logging/LogManager$LoggerContext;->ensureInitialized()V

    .line 826
    iget-object v0, p0, Ljava/util/logging/LogManager$LoggerContext;->namedLoggers:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-object v0

    .line 824
    .end local p0    # "this":Ljava/util/logging/LogManager$LoggerContext;
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method greylist-max-o getNode(Ljava/lang/String;)Ljava/util/logging/LogManager$LogNode;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;

    .line 866
    if-eqz p1, :cond_4d

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_4d

    .line 869
    :cond_b
    iget-object v0, p0, Ljava/util/logging/LogManager$LoggerContext;->root:Ljava/util/logging/LogManager$LogNode;

    .line 870
    .local v0, "node":Ljava/util/logging/LogManager$LogNode;
    :goto_d
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4c

    .line 871
    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 873
    .local v1, "ix":I
    if-lez v1, :cond_27

    .line 874
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 875
    .local v2, "head":Ljava/lang/String;
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2a

    .line 877
    .end local v2    # "head":Ljava/lang/String;
    :cond_27
    move-object v2, p1

    .line 878
    .restart local v2    # "head":Ljava/lang/String;
    const-string p1, ""

    .line 880
    :goto_2a
    iget-object v3, v0, Ljava/util/logging/LogManager$LogNode;->children:Ljava/util/HashMap;

    if-nez v3, :cond_35

    .line 881
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v0, Ljava/util/logging/LogManager$LogNode;->children:Ljava/util/HashMap;

    .line 883
    :cond_35
    iget-object v3, v0, Ljava/util/logging/LogManager$LogNode;->children:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/logging/LogManager$LogNode;

    .line 884
    .local v3, "child":Ljava/util/logging/LogManager$LogNode;
    if-nez v3, :cond_4a

    .line 885
    new-instance v4, Ljava/util/logging/LogManager$LogNode;

    invoke-direct {v4, v0, p0}, Ljava/util/logging/LogManager$LogNode;-><init>(Ljava/util/logging/LogManager$LogNode;Ljava/util/logging/LogManager$LoggerContext;)V

    move-object v3, v4

    .line 886
    iget-object v4, v0, Ljava/util/logging/LogManager$LogNode;->children:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 888
    :cond_4a
    move-object v0, v3

    .line 889
    .end local v1    # "ix":I
    .end local v2    # "head":Ljava/lang/String;
    .end local v3    # "child":Ljava/util/logging/LogManager$LogNode;
    goto :goto_d

    .line 890
    :cond_4c
    return-object v0

    .line 867
    .end local v0    # "node":Ljava/util/logging/LogManager$LogNode;
    :cond_4d
    :goto_4d
    iget-object v0, p0, Ljava/util/logging/LogManager$LoggerContext;->root:Ljava/util/logging/LogManager$LogNode;

    return-object v0
.end method

.method final greylist-max-o getOwner()Ljava/util/logging/LogManager;
    .registers 2

    .line 624
    iget-object v0, p0, Ljava/util/logging/LogManager$LoggerContext;->this$0:Ljava/util/logging/LogManager;

    return-object v0
.end method

.method final greylist-max-o getRootLogger()Ljava/util/logging/Logger;
    .registers 2

    .line 631
    invoke-virtual {p0}, Ljava/util/logging/LogManager$LoggerContext;->getOwner()Ljava/util/logging/LogManager;

    move-result-object v0

    # getter for: Ljava/util/logging/LogManager;->rootLogger:Ljava/util/logging/Logger;
    invoke-static {v0}, Ljava/util/logging/LogManager;->access$600(Ljava/util/logging/LogManager;)Ljava/util/logging/Logger;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized greylist-max-o removeLoggerRef(Ljava/lang/String;Ljava/util/logging/LogManager$LoggerWeakRef;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/util/logging/LogManager$LoggerWeakRef;

    monitor-enter p0

    .line 819
    :try_start_1
    iget-object v0, p0, Ljava/util/logging/LogManager$LoggerContext;->namedLoggers:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 820
    monitor-exit p0

    return-void

    .line 818
    .end local p0    # "this":Ljava/util/logging/LogManager$LoggerContext;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final greylist-max-o requiresDefaultLoggers()Z
    .registers 3

    .line 615
    invoke-virtual {p0}, Ljava/util/logging/LogManager$LoggerContext;->getOwner()Ljava/util/logging/LogManager;

    move-result-object v0

    # getter for: Ljava/util/logging/LogManager;->manager:Ljava/util/logging/LogManager;
    invoke-static {}, Ljava/util/logging/LogManager;->access$200()Ljava/util/logging/LogManager;

    move-result-object v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 616
    .local v0, "requiresDefaultLoggers":Z
    :goto_d
    if-eqz v0, :cond_16

    .line 617
    invoke-virtual {p0}, Ljava/util/logging/LogManager$LoggerContext;->getOwner()Ljava/util/logging/LogManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/logging/LogManager;->ensureLogManagerInitialized()V

    .line 619
    :cond_16
    return v0
.end method
