.class Ljavax/security/auth/Subject$ClassSet;
.super Ljava/util/AbstractSet;
.source "Subject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/security/auth/Subject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClassSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private set:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljavax/security/auth/Subject;

.field private which:I


# direct methods
.method constructor <init>(Ljavax/security/auth/Subject;ILjava/lang/Class;)V
    .registers 6
    .param p1, "this$0"    # Ljavax/security/auth/Subject;
    .param p2, "which"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1359
    .local p0, "this":Ljavax/security/auth/Subject$ClassSet;, "Ljavax/security/auth/Subject$ClassSet<TT;>;"
    .local p3, "c":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iput-object p1, p0, Ljavax/security/auth/Subject$ClassSet;->this$0:Ljavax/security/auth/Subject;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 1360
    iput p2, p0, Ljavax/security/auth/Subject$ClassSet;->which:I

    .line 1361
    iput-object p3, p0, Ljavax/security/auth/Subject$ClassSet;->c:Ljava/lang/Class;

    .line 1362
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ljavax/security/auth/Subject$ClassSet;->set:Ljava/util/Set;

    .line 1364
    packed-switch p2, :pswitch_data_32

    .line 1372
    iget-object v0, p1, Ljavax/security/auth/Subject;->privCredentials:Ljava/util/Set;

    monitor-enter v0

    :try_start_16
    invoke-direct {p0}, Ljavax/security/auth/Subject$ClassSet;->populateSet()V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_2f

    :goto_19
    monitor-exit v0

    .line 1375
    return-void

    .line 1366
    :pswitch_1b
    iget-object v0, p1, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    monitor-enter v0

    :try_start_1e
    invoke-direct {p0}, Ljavax/security/auth/Subject$ClassSet;->populateSet()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_22

    goto :goto_19

    :catchall_22
    move-exception v1

    monitor-exit v0

    throw v1

    .line 1369
    :pswitch_25
    iget-object v0, p1, Ljavax/security/auth/Subject;->pubCredentials:Ljava/util/Set;

    monitor-enter v0

    :try_start_28
    invoke-direct {p0}, Ljavax/security/auth/Subject$ClassSet;->populateSet()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2c

    goto :goto_19

    :catchall_2c
    move-exception v1

    monitor-exit v0

    throw v1

    .line 1372
    :catchall_2f
    move-exception v1

    monitor-exit v0

    throw v1

    .line 1364
    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_25
    .end packed-switch
.end method

.method private populateSet()V
    .registers 8

    .prologue
    .local p0, "this":Ljavax/security/auth/Subject$ClassSet;, "Ljavax/security/auth/Subject$ClassSet<TT;>;"
    const/4 v6, 0x3

    .line 1380
    iget v3, p0, Ljavax/security/auth/Subject$ClassSet;->which:I

    packed-switch v3, :pswitch_data_72

    .line 1388
    iget-object v3, p0, Ljavax/security/auth/Subject$ClassSet;->this$0:Ljavax/security/auth/Subject;

    iget-object v3, v3, Ljavax/security/auth/Subject;->privCredentials:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1395
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_70

    .line 1397
    iget v3, p0, Ljavax/security/auth/Subject$ClassSet;->which:I

    if-ne v3, v6, :cond_49

    .line 1399
    new-instance v3, Ljavax/security/auth/Subject$ClassSet$1;

    invoke-direct {v3, p0, v0}, Ljavax/security/auth/Subject$ClassSet$1;-><init>(Ljavax/security/auth/Subject$ClassSet;Ljava/util/Iterator;)V

    .line 1398
    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    .line 1407
    .local v1, "next":Ljava/lang/Object;
    :goto_21
    iget-object v3, p0, Ljavax/security/auth/Subject$ClassSet;->c:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1408
    iget v3, p0, Ljavax/security/auth/Subject$ClassSet;->which:I

    if-eq v3, v6, :cond_4e

    .line 1409
    iget-object v3, p0, Ljavax/security/auth/Subject$ClassSet;->set:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 1382
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v1    # "next":Ljava/lang/Object;
    :pswitch_37
    iget-object v3, p0, Ljavax/security/auth/Subject$ClassSet;->this$0:Ljavax/security/auth/Subject;

    iget-object v3, v3, Ljavax/security/auth/Subject;->principals:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    goto :goto_e

    .line 1385
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :pswitch_40
    iget-object v3, p0, Ljavax/security/auth/Subject$ClassSet;->this$0:Ljavax/security/auth/Subject;

    iget-object v3, v3, Ljavax/security/auth/Subject;->pubCredentials:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    goto :goto_e

    .line 1405
    :cond_49
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .restart local v1    # "next":Ljava/lang/Object;
    goto :goto_21

    .line 1412
    :cond_4e
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    .line 1413
    .local v2, "sm":Ljava/lang/SecurityManager;
    if-eqz v2, :cond_6a

    .line 1414
    new-instance v3, Ljavax/security/auth/PrivateCredentialPermission;

    .line 1415
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1416
    iget-object v5, p0, Ljavax/security/auth/Subject$ClassSet;->this$0:Ljavax/security/auth/Subject;

    invoke-virtual {v5}, Ljavax/security/auth/Subject;->getPrincipals()Ljava/util/Set;

    move-result-object v5

    .line 1414
    invoke-direct {v3, v4, v5}, Ljavax/security/auth/PrivateCredentialPermission;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    invoke-virtual {v2, v3}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 1418
    :cond_6a
    iget-object v3, p0, Ljavax/security/auth/Subject$ClassSet;->set:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 1422
    .end local v1    # "next":Ljava/lang/Object;
    .end local v2    # "sm":Ljava/lang/SecurityManager;
    :cond_70
    return-void

    .line 1380
    nop

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_37
        :pswitch_40
    .end packed-switch
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 1434
    .local p0, "this":Ljavax/security/auth/Subject$ClassSet;, "Ljavax/security/auth/Subject$ClassSet<TT;>;"
    .local p1, "o":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Ljavax/security/auth/Subject$ClassSet;->c:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 1435
    new-instance v0, Ljava/text/MessageFormat;

    .line 1436
    const-string/jumbo v2, "attempting.to.add.an.object.which.is.not.an.instance.of.class"

    .line 1435
    invoke-static {v2}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    .line 1437
    .local v0, "form":Ljava/text/MessageFormat;
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Ljavax/security/auth/Subject$ClassSet;->c:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 1438
    .local v1, "source":[Ljava/lang/Object;
    new-instance v2, Ljava/lang/SecurityException;

    invoke-virtual {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1441
    .end local v0    # "form":Ljava/text/MessageFormat;
    .end local v1    # "source":[Ljava/lang/Object;
    :cond_2e
    iget-object v2, p0, Ljavax/security/auth/Subject$ClassSet;->set:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1429
    .local p0, "this":Ljavax/security/auth/Subject$ClassSet;, "Ljavax/security/auth/Subject$ClassSet<TT;>;"
    iget-object v0, p0, Ljavax/security/auth/Subject$ClassSet;->set:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 1425
    .local p0, "this":Ljavax/security/auth/Subject$ClassSet;, "Ljavax/security/auth/Subject$ClassSet<TT;>;"
    iget-object v0, p0, Ljavax/security/auth/Subject$ClassSet;->set:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
