.class final Ljava/sql/DriverManager$2;
.super Ljava/lang/Object;
.source "DriverManager.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/sql/DriverManager;->loadInitialDrivers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 490
    invoke-virtual {p0}, Ljava/sql/DriverManager$2;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .registers 5

    .prologue
    .line 492
    const-class v3, Ljava/sql/Driver;

    invoke-static {v3}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;)Ljava/util/ServiceLoader;

    move-result-object v1

    .line 493
    .local v1, "loadedDrivers":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<Ljava/sql/Driver;>;"
    invoke-virtual {v1}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 508
    .local v0, "driversIterator":Ljava/util/Iterator;
    :goto_a
    :try_start_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 509
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_13} :catch_14

    goto :goto_a

    .line 511
    :catch_14
    move-exception v2

    .line 514
    :cond_15
    const/4 v3, 0x0

    return-object v3
.end method
