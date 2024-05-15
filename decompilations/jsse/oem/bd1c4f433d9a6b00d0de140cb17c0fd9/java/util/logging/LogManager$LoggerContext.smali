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
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field final synthetic $assertionsDisabled:Z

.field private final namedLoggers:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/logging/LogManager$LoggerWeakRef;",
            ">;"
        }
    .end annotation
.end field

.field private final root:Ljava/util/logging/LogManager$LogNode;

.field final synthetic this$0:Ljava/util/logging/LogManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const-class v0, Ljava/util/logging/LogManager$LoggerContext;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Ljava/util/logging/LogManager$LoggerContext;->-assertionsDisabled:Z

    .line 608
    return-void
.end method

.method private constructor <init>(Ljava/util/logging/LogManager;)V
    .registers 4
    .param p1, "this$0"    # Ljava/util/logging/LogManager;

    .prologue
    .line 613
    iput-object p1, p0, Ljava/util/logging/LogManager$LoggerContext;->this$0:Ljava/util/logging/LogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 610
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Ljava/util/logging/LogManager$LoggerContext;->namedLoggers:Ljava/util/Hashtable;

    .line 614
    new-instance v0, Ljava/util/logging/LogManager$LogNode;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Ljava/util/logging/LogManager$LogNode;-><init>(Ljava/util/logging/LogManager$LogNode;Ljava/util/logging/LogManager$LoggerContext;)V

    iput-object v0, p0, Ljava/util/logging/LogManager$LoggerContext;->root:Ljava/util/logging/LogManager$LogNode;

    .line 615
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/logging/LogManager;Ljava/util/logging/LogManager$LoggerContext;)V
    .registers 3
    .param p1, "this$0"    # Ljava/util/logging/LogManager;
    .param p2, "-this1"    # Ljava/util/logging/LogManager$LoggerContext;

    .prologue
    invoke-direct {p0, p1}, Ljava/util/logging/LogManager$LoggerContext;-><init>(Ljava/util/logging/LogManager;)V

    return-void
.end method

.method private ensureAllDefaultLoggers(Ljava/util/logging/Logger;)V
    .registers 4
    .param p1, "logger"    # Ljava/util/logging/Logger;

    .prologue
    .line 698
    invoke-virtual {p0}, Ljava/util/logging/LogManager$LoggerContext;->requiresDefaultLoggers()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 699
    invoke-virtual {p1}, Ljava/util/logging/Logger;->getName()Ljava/lang/String;

    move-result-object v0

    .line 700
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_27

    .line 701
    invoke-virtual {p0}, Ljava/util/logging/LogManager$LoggerContext;->getRootLogger()Ljava/util/logging/Logger;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/util/logging/LogManager$LoggerContext;->ensureDefaultLogger(Ljava/util/logging/Logger;)V

    .line 702
    const-string/jumbo v1, "global"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 703
    invoke-virtual {p0}, Ljava/util/logging/LogManager$LoggerContext;->getGlobalLogger()Ljava/util/logging/Logger;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/util/logging/LogManager$LoggerContext;->ensureDefaultLogger(Ljava/util/logging/Logger;)V

    .line 707
    .end local v0    # "name":Ljava/lang/String;
    :cond_27
    return-void
.end method

.method private ensureDefaultLogger(Ljava/util/logging/Logger;)V
    .registers 4
    .param p1, "logger"    # Ljava/util/logging/Logger;

    .prologue
    .line 716
    invoke-virtual {p0}, Ljava/util/logging/LogManager$LoggerContext;->requiresDefaultLoggers()Z

    move-result v0

    if-eqz v0, :cond_8

    if-nez p1, :cond_14

    .line 724
    :cond_8
    sget-boolean v0, Ljava/util/logging/LogManager$LoggerContext;->-assertionsDisabled:Z

    if-nez v0, :cond_31

    if-eqz p1, :cond_31

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 717
    :cond_14
    sget-object v0, Ljava/util/logging/Logger;->global:Ljava/util/logging/Logger;

    if-eq p1, v0, :cond_20

    iget-object v0, p0, Ljava/util/logging/LogManager$LoggerContext;->this$0:Ljava/util/logging/LogManager;

    invoke-static {v0}, Ljava/util/logging/LogManager;->-get5(Ljava/util/logging/LogManager;)Ljava/util/logging/Logger;

    move-result-object v0

    if-ne p1, v0, :cond_8

    .line 730
    :cond_20
    iget-object v0, p0, Ljava/util/logging/LogManager$LoggerContext;->namedLoggers:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/util/logging/Logger;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 737
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/logging/LogManager$LoggerContext;->addLocalLogger(Ljava/util/logging/Logger;Z)Z

    .line 739
    :cond_30
    return-void

    .line 726
    :cond_31
    return-void
.end method

.method private ensureInitialized()V
    .registers 2

    .prologue
    .line 666
    invoke-virtual {p0}, Ljava/util/logging/LogManager$LoggerContext;->requiresDefaultLoggers()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 668
    invoke-virtual {p0}, Ljava/util/logging/LogManager$LoggerContext;->getRootLogger()Ljava/util/logging/Logger;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/logging/LogManager$LoggerContext;->ensureDefaultLogger(Ljava/util/logging/Logger;)V

    .line 669
    invoke-virtual {p0}, Ljava/util/logging/LogManager$LoggerContext;->getGlobalLogger()Ljava/util/logging/Logger;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/logging/LogManager$LoggerContext;->ensureDefaultLogger(Ljava/util/logging/Logger;)V

    .line 671
    :cond_14
    return-void
.end method

.method private processParentHandlers(Ljava/util/logging/Logger;Ljava/lang/String;)V
    .registers 11
    .param p1, "logger"    # Ljava/util/logging/Logger;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 848
    invoke-virtual {p0}, Ljava/util/logging/LogManager$LoggerContext;->getOwner()Ljava/util/logging/LogManager;

    move-result-object v2

    .line 849
    .local v2, "owner":Ljava/util/logging/LogManager;
    new-instance v4, Ljava/util/logging/LogManager$LoggerContext$1;

    invoke-direct {v4, p0, p1, v2, p2}, Ljava/util/logging/LogManager$LoggerContext$1;-><init>(Ljava/util/logging/LogManager$LoggerContext;Ljava/util/logging/Logger;Ljava/util/logging/LogManager;Ljava/lang/String;)V

    invoke-static {v4}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 862
    const/4 v0, 0x1

    .line 864
    .local v0, "ix":I
    :goto_f
    const-string/jumbo v4, "."

    invoke-virtual {p2, v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 865
    .local v1, "ix2":I
    if-gez v1, :cond_19

    .line 877
    return-void

    .line 868
    :cond_19
    invoke-virtual {p2, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 869
    .local v3, "pname":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".level"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_51

    .line 870
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".handlers"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_54

    .line 873
    :cond_51
    invoke-virtual {p0, v3, v6}, Ljava/util/logging/LogManager$LoggerContext;->demandLogger(Ljava/lang/String;Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 875
    :cond_54
    add-int/lit8 v0, v1, 0x1

    goto :goto_f
.end method


# virtual methods
.method addLocalLogger(Ljava/util/logging/Logger;)Z
    .registers 3
    .param p1, "logger"    # Ljava/util/logging/Logger;

    .prologue
    .line 743
    invoke-virtual {p0}, Ljava/util/logging/LogManager$LoggerContext;->requiresDefaultLoggers()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Ljava/util/logging/LogManager$LoggerContext;->addLocalLogger(Ljava/util/logging/Logger;Z)Z

    move-result v0

    return v0
.end method

.method addLocalLogger(Ljava/util/logging/Logger;Ljava/util/logging/LogManager;)Z
    .registers 4
    .param p1, "logger"    # Ljava/util/logging/Logger;
    .param p2, "manager"    # Ljava/util/logging/LogManager;

    .prologue
    .line 748
    invoke-virtual {p0}, Ljava/util/logging/LogManager$LoggerContext;->requiresDefaultLoggers()Z

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Ljava/util/logging/LogManager$LoggerContext;->addLocalLogger(Ljava/util/logging/Logger;ZLjava/util/logging/LogManager;)Z

    move-result v0

    return v0
.end method

.method addLocalLogger(Ljava/util/logging/Logger;Z)Z
    .registers 4
    .param p1, "logger"    # Ljava/util/logging/Logger;
    .param p2, "addDefaultLoggersIfNeeded"    # Z

    .prologue
    .line 752
    invoke-static {}, Ljava/util/logging/LogManager;->-get4()Ljava/util/logging/LogManager;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Ljava/util/logging/LogManager$LoggerContext;->addLocalLogger(Ljava/util/logging/Logger;ZLjava/util/logging/LogManager;)Z

    move-result v0

    return v0
.end method

.method declared-synchronized addLocalLogger(Ljava/util/logging/Logger;ZLjava/util/logging/LogManager;)Z
    .registers 14
    .param p1, "logger"    # Ljava/util/logging/Logger;
    .param p2, "addDefaultLoggersIfNeeded"    # Z
    .param p3, "manager"    # Ljava/util/logging/LogManager;

    .prologue
    monitor-enter p0

    .line 768
    if-eqz p2, :cond_6

    .line 769
    :try_start_3
    invoke-direct {p0, p1}, Ljava/util/logging/LogManager$LoggerContext;->ensureAllDefaultLoggers(Ljava/util/logging/Logger;)V

    .line 772
    :cond_6
    invoke-virtual {p1}, Ljava/util/logging/Logger;->getName()Ljava/lang/String;

    move-result-object v1

    .line 773
    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_15

    .line 774
    new-instance v8, Ljava/lang/NullPointerException;

    invoke-direct {v8}, Ljava/lang/NullPointerException;-><init>()V

    throw v8
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_12

    .end local v1    # "name":Ljava/lang/String;
    :catchall_12
    move-exception v8

    monitor-exit p0

    throw v8

    .line 776
    .restart local v1    # "name":Ljava/lang/String;
    :cond_15
    :try_start_15
    iget-object v8, p0, Ljava/util/logging/LogManager$LoggerContext;->namedLoggers:Ljava/util/Hashtable;

    invoke-virtual {v8, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/logging/LogManager$LoggerWeakRef;

    .line 777
    .local v7, "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    if-eqz v7, :cond_28

    .line 778
    invoke-virtual {v7}, Ljava/util/logging/LogManager$LoggerWeakRef;->get()Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_8a

    .line 782
    invoke-virtual {v7}, Ljava/util/logging/LogManager$LoggerWeakRef;->dispose()V

    .line 791
    :cond_28
    invoke-virtual {p0}, Ljava/util/logging/LogManager$LoggerContext;->getOwner()Ljava/util/logging/LogManager;

    move-result-object v5

    .line 792
    .local v5, "owner":Ljava/util/logging/LogManager;
    invoke-virtual {p1, v5}, Ljava/util/logging/Logger;->setLogManager(Ljava/util/logging/LogManager;)V

    .line 793
    new-instance v7, Ljava/util/logging/LogManager$LoggerWeakRef;

    .end local v7    # "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v7, v5, p1}, Ljava/util/logging/LogManager$LoggerWeakRef;-><init>(Ljava/util/logging/LogManager;Ljava/util/logging/Logger;)V

    .line 794
    .restart local v7    # "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    iget-object v8, p0, Ljava/util/logging/LogManager$LoggerContext;->namedLoggers:Ljava/util/Hashtable;

    invoke-virtual {v8, v1, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 798
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ".level"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Ljava/util/logging/LogManager;->getLevelProperty(Ljava/lang/String;Ljava/util/logging/Level;)Ljava/util/logging/Level;

    move-result-object v0

    .line 799
    .local v0, "level":Ljava/util/logging/Level;
    if-eqz v0, :cond_62

    invoke-virtual {p1}, Ljava/util/logging/Logger;->isLevelInitialized()Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_62

    .line 800
    invoke-static {p1, v0}, Ljava/util/logging/LogManager;->-wrap2(Ljava/util/logging/Logger;Ljava/util/logging/Level;)V

    .line 806
    :cond_62
    invoke-direct {p0, p1, v1}, Ljava/util/logging/LogManager$LoggerContext;->processParentHandlers(Ljava/util/logging/Logger;Ljava/lang/String;)V

    .line 809
    invoke-virtual {p0, v1}, Ljava/util/logging/LogManager$LoggerContext;->getNode(Ljava/lang/String;)Ljava/util/logging/LogManager$LogNode;

    move-result-object v2

    .line 810
    .local v2, "node":Ljava/util/logging/LogManager$LogNode;
    iput-object v7, v2, Ljava/util/logging/LogManager$LogNode;->loggerRef:Ljava/util/logging/LogManager$LoggerWeakRef;

    .line 811
    const/4 v6, 0x0

    .line 812
    .local v6, "parent":Ljava/util/logging/Logger;
    iget-object v4, v2, Ljava/util/logging/LogManager$LogNode;->parent:Ljava/util/logging/LogManager$LogNode;

    .line 813
    .end local v6    # "parent":Ljava/util/logging/Logger;
    .local v4, "nodep":Ljava/util/logging/LogManager$LogNode;
    :goto_6e
    if-eqz v4, :cond_7c

    .line 814
    iget-object v3, v4, Ljava/util/logging/LogManager$LogNode;->loggerRef:Ljava/util/logging/LogManager$LoggerWeakRef;

    .line 815
    .local v3, "nodeRef":Ljava/util/logging/LogManager$LoggerWeakRef;
    if-eqz v3, :cond_8d

    .line 816
    invoke-virtual {v3}, Ljava/util/logging/LogManager$LoggerWeakRef;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/logging/Logger;

    .line 817
    .local v6, "parent":Ljava/util/logging/Logger;
    if-eqz v6, :cond_8d

    .line 824
    .end local v3    # "nodeRef":Ljava/util/logging/LogManager$LoggerWeakRef;
    .end local v6    # "parent":Ljava/util/logging/Logger;
    :cond_7c
    if-eqz v6, :cond_81

    .line 825
    invoke-static {p1, v6}, Ljava/util/logging/LogManager;->-wrap3(Ljava/util/logging/Logger;Ljava/util/logging/Logger;)V

    .line 828
    :cond_81
    invoke-virtual {v2, p1}, Ljava/util/logging/LogManager$LogNode;->walkAndSetParent(Ljava/util/logging/Logger;)V

    .line 830
    invoke-virtual {v7, v2}, Ljava/util/logging/LogManager$LoggerWeakRef;->setNode(Ljava/util/logging/LogManager$LogNode;)V
    :try_end_87
    .catchall {:try_start_15 .. :try_end_87} :catchall_12

    .line 831
    const/4 v8, 0x1

    monitor-exit p0

    return v8

    .line 785
    .end local v0    # "level":Ljava/util/logging/Level;
    .end local v2    # "node":Ljava/util/logging/LogManager$LogNode;
    .end local v4    # "nodep":Ljava/util/logging/LogManager$LogNode;
    .end local v5    # "owner":Ljava/util/logging/LogManager;
    :cond_8a
    const/4 v8, 0x0

    monitor-exit p0

    return v8

    .line 821
    .restart local v0    # "level":Ljava/util/logging/Level;
    .restart local v2    # "node":Ljava/util/logging/LogManager$LogNode;
    .restart local v3    # "nodeRef":Ljava/util/logging/LogManager$LoggerWeakRef;
    .restart local v4    # "nodep":Ljava/util/logging/LogManager$LogNode;
    .restart local v5    # "owner":Ljava/util/logging/LogManager;
    :cond_8d
    :try_start_8d
    iget-object v4, v4, Ljava/util/logging/LogManager$LogNode;->parent:Ljava/util/logging/LogManager$LogNode;
    :try_end_8f
    .catchall {:try_start_8d .. :try_end_8f} :catchall_12

    goto :goto_6e
.end method

.method demandLogger(Ljava/lang/String;Ljava/lang/String;)Ljava/util/logging/Logger;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "resourceBundleName"    # Ljava/lang/String;

    .prologue
    .line 653
    invoke-virtual {p0}, Ljava/util/logging/LogManager$LoggerContext;->getOwner()Ljava/util/logging/LogManager;

    move-result-object v0

    .line 654
    .local v0, "owner":Ljava/util/logging/LogManager;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Ljava/util/logging/LogManager;->demandLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v1

    return-object v1
.end method

.method declared-synchronized findLogger(Ljava/lang/String;)Ljava/util/logging/Logger;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    monitor-enter p0

    .line 677
    :try_start_2
    invoke-direct {p0}, Ljava/util/logging/LogManager$LoggerContext;->ensureInitialized()V

    .line 678
    iget-object v2, p0, Ljava/util/logging/LogManager$LoggerContext;->namedLoggers:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/logging/LogManager$LoggerWeakRef;
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_1e

    .line 679
    .local v1, "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    if-nez v1, :cond_11

    monitor-exit p0

    .line 680
    return-object v3

    .line 682
    :cond_11
    :try_start_11
    invoke-virtual {v1}, Ljava/util/logging/LogManager$LoggerWeakRef;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/logging/Logger;

    .line 683
    .local v0, "logger":Ljava/util/logging/Logger;
    if-nez v0, :cond_1c

    .line 686
    invoke-virtual {v1}, Ljava/util/logging/LogManager$LoggerWeakRef;->dispose()V
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_1e

    :cond_1c
    monitor-exit p0

    .line 688
    return-object v0

    .end local v0    # "logger":Ljava/util/logging/Logger;
    .end local v1    # "ref":Ljava/util/logging/LogManager$LoggerWeakRef;
    :catchall_1e
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method final getGlobalLogger()Ljava/util/logging/Logger;
    .registers 2

    .prologue
    .line 646
    sget-object v0, Ljava/util/logging/Logger;->global:Ljava/util/logging/Logger;

    .line 647
    .local v0, "global":Ljava/util/logging/Logger;
    return-object v0
.end method

.method declared-synchronized getLoggerNames()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 841
    :try_start_1
    invoke-direct {p0}, Ljava/util/logging/LogManager$LoggerContext;->ensureInitialized()V

    .line 842
    iget-object v0, p0, Ljava/util/logging/LogManager$LoggerContext;->namedLoggers:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getNode(Ljava/lang/String;)Ljava/util/logging/LogManager$LogNode;
    .registers 8
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 882
    if-eqz p1, :cond_c

    const-string/jumbo v4, ""

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 883
    :cond_c
    iget-object v4, p0, Ljava/util/logging/LogManager$LoggerContext;->root:Ljava/util/logging/LogManager$LogNode;

    return-object v4

    .line 885
    :cond_f
    iget-object v3, p0, Ljava/util/logging/LogManager$LoggerContext;->root:Ljava/util/logging/LogManager$LogNode;

    .line 886
    .local v3, "node":Ljava/util/logging/LogManager$LogNode;
    :goto_11
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_50

    .line 887
    const-string/jumbo v4, "."

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 889
    .local v2, "ix":I
    if-lez v2, :cond_4b

    .line 890
    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 891
    .local v1, "head":Ljava/lang/String;
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 896
    :goto_2a
    iget-object v4, v3, Ljava/util/logging/LogManager$LogNode;->children:Ljava/util/HashMap;

    if-nez v4, :cond_35

    .line 897
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v3, Ljava/util/logging/LogManager$LogNode;->children:Ljava/util/HashMap;

    .line 899
    :cond_35
    iget-object v4, v3, Ljava/util/logging/LogManager$LogNode;->children:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/logging/LogManager$LogNode;

    .line 900
    .local v0, "child":Ljava/util/logging/LogManager$LogNode;
    if-nez v0, :cond_49

    .line 901
    new-instance v0, Ljava/util/logging/LogManager$LogNode;

    .end local v0    # "child":Ljava/util/logging/LogManager$LogNode;
    invoke-direct {v0, v3, p0}, Ljava/util/logging/LogManager$LogNode;-><init>(Ljava/util/logging/LogManager$LogNode;Ljava/util/logging/LogManager$LoggerContext;)V

    .line 902
    .restart local v0    # "child":Ljava/util/logging/LogManager$LogNode;
    iget-object v4, v3, Ljava/util/logging/LogManager$LogNode;->children:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 904
    :cond_49
    move-object v3, v0

    goto :goto_11

    .line 893
    .end local v0    # "child":Ljava/util/logging/LogManager$LogNode;
    .end local v1    # "head":Ljava/lang/String;
    :cond_4b
    move-object v1, p1

    .line 894
    .restart local v1    # "head":Ljava/lang/String;
    const-string/jumbo p1, ""

    goto :goto_2a

    .line 906
    .end local v1    # "head":Ljava/lang/String;
    .end local v2    # "ix":I
    :cond_50
    return-object v3
.end method

.method final getOwner()Ljava/util/logging/LogManager;
    .registers 2

    .prologue
    .line 630
    iget-object v0, p0, Ljava/util/logging/LogManager$LoggerContext;->this$0:Ljava/util/logging/LogManager;

    return-object v0
.end method

.method final getRootLogger()Ljava/util/logging/Logger;
    .registers 2

    .prologue
    .line 637
    invoke-virtual {p0}, Ljava/util/logging/LogManager$LoggerContext;->getOwner()Ljava/util/logging/LogManager;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/LogManager;->-get5(Ljava/util/logging/LogManager;)Ljava/util/logging/Logger;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized removeLoggerRef(Ljava/lang/String;Ljava/util/logging/LogManager$LoggerWeakRef;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/util/logging/LogManager$LoggerWeakRef;

    .prologue
    monitor-enter p0

    .line 835
    :try_start_1
    iget-object v0, p0, Ljava/util/logging/LogManager$LoggerContext;->namedLoggers:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    .line 836
    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final requiresDefaultLoggers()Z
    .registers 4

    .prologue
    .line 621
    invoke-virtual {p0}, Ljava/util/logging/LogManager$LoggerContext;->getOwner()Ljava/util/logging/LogManager;

    move-result-object v1

    invoke-static {}, Ljava/util/logging/LogManager;->-get4()Ljava/util/logging/LogManager;

    move-result-object v2

    if-ne v1, v2, :cond_15

    const/4 v0, 0x1

    .line 622
    .local v0, "requiresDefaultLoggers":Z
    :goto_b
    if-eqz v0, :cond_14

    .line 623
    invoke-virtual {p0}, Ljava/util/logging/LogManager$LoggerContext;->getOwner()Ljava/util/logging/LogManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/logging/LogManager;->ensureLogManagerInitialized()V

    .line 625
    :cond_14
    return v0

    .line 621
    .end local v0    # "requiresDefaultLoggers":Z
    :cond_15
    const/4 v0, 0x0

    .restart local v0    # "requiresDefaultLoggers":Z
    goto :goto_b
.end method
