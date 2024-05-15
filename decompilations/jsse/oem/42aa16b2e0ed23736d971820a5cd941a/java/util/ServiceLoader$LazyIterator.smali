.class Ljava/util/ServiceLoader$LazyIterator;
.super Ljava/lang/Object;
.source "ServiceLoader.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ServiceLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LazyIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TS;>;"
    }
.end annotation


# instance fields
.field greylist-max-o configs:Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Enumeration<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o loader:Ljava/lang/ClassLoader;

.field greylist-max-o nextName:Ljava/lang/String;

.field greylist-max-o pending:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o service:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TS;>;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Ljava/util/ServiceLoader;


# direct methods
.method private constructor blacklist <init>(Ljava/util/ServiceLoader;Ljava/lang/Class;Ljava/lang/ClassLoader;)V
    .registers 4
    .param p3, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TS;>;",
            "Ljava/lang/ClassLoader;",
            ")V"
        }
    .end annotation

    .line 334
    .local p0, "this":Ljava/util/ServiceLoader$LazyIterator;, "Ljava/util/ServiceLoader<TS;>.LazyIterator;"
    .local p2, "service":Ljava/lang/Class;, "Ljava/lang/Class<TS;>;"
    iput-object p1, p0, Ljava/util/ServiceLoader$LazyIterator;->this$0:Ljava/util/ServiceLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    const/4 p1, 0x0

    iput-object p1, p0, Ljava/util/ServiceLoader$LazyIterator;->configs:Ljava/util/Enumeration;

    .line 331
    iput-object p1, p0, Ljava/util/ServiceLoader$LazyIterator;->pending:Ljava/util/Iterator;

    .line 332
    iput-object p1, p0, Ljava/util/ServiceLoader$LazyIterator;->nextName:Ljava/lang/String;

    .line 335
    iput-object p2, p0, Ljava/util/ServiceLoader$LazyIterator;->service:Ljava/lang/Class;

    .line 336
    iput-object p3, p0, Ljava/util/ServiceLoader$LazyIterator;->loader:Ljava/lang/ClassLoader;

    .line 337
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/ServiceLoader;Ljava/lang/Class;Ljava/lang/ClassLoader;Ljava/util/ServiceLoader$1;)V
    .registers 5
    .param p1, "x0"    # Ljava/util/ServiceLoader;
    .param p2, "x1"    # Ljava/lang/Class;
    .param p3, "x2"    # Ljava/lang/ClassLoader;
    .param p4, "x3"    # Ljava/util/ServiceLoader$1;

    .line 324
    .local p0, "this":Ljava/util/ServiceLoader$LazyIterator;, "Ljava/util/ServiceLoader<TS;>.LazyIterator;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/ServiceLoader$LazyIterator;-><init>(Ljava/util/ServiceLoader;Ljava/lang/Class;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method private greylist-max-o hasNextService()Z
    .registers 5

    .line 340
    .local p0, "this":Ljava/util/ServiceLoader$LazyIterator;, "Ljava/util/ServiceLoader<TS;>.LazyIterator;"
    iget-object v0, p0, Ljava/util/ServiceLoader$LazyIterator;->nextName:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 341
    return v1

    .line 343
    :cond_6
    iget-object v0, p0, Ljava/util/ServiceLoader$LazyIterator;->configs:Ljava/util/Enumeration;

    if-nez v0, :cond_3d

    .line 345
    :try_start_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "META-INF/services/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljava/util/ServiceLoader$LazyIterator;->service:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 346
    .local v0, "fullName":Ljava/lang/String;
    iget-object v2, p0, Ljava/util/ServiceLoader$LazyIterator;->loader:Ljava/lang/ClassLoader;

    if-nez v2, :cond_2c

    .line 347
    invoke-static {v0}, Ljava/lang/ClassLoader;->getSystemResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v2

    iput-object v2, p0, Ljava/util/ServiceLoader$LazyIterator;->configs:Ljava/util/Enumeration;

    goto :goto_34

    .line 349
    :cond_2c
    iget-object v2, p0, Ljava/util/ServiceLoader$LazyIterator;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v2

    iput-object v2, p0, Ljava/util/ServiceLoader$LazyIterator;->configs:Ljava/util/Enumeration;
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_34} :catch_35

    .line 352
    .end local v0    # "fullName":Ljava/lang/String;
    :goto_34
    goto :goto_3d

    .line 350
    :catch_35
    move-exception v0

    .line 351
    .local v0, "x":Ljava/io/IOException;
    iget-object v2, p0, Ljava/util/ServiceLoader$LazyIterator;->service:Ljava/lang/Class;

    const-string v3, "Error locating configuration files"

    # invokes: Ljava/util/ServiceLoader;->fail(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v2, v3, v0}, Ljava/util/ServiceLoader;->access$100(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 354
    .end local v0    # "x":Ljava/io/IOException;
    :cond_3d
    :goto_3d
    iget-object v0, p0, Ljava/util/ServiceLoader$LazyIterator;->pending:Ljava/util/Iterator;

    if-eqz v0, :cond_53

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_48

    goto :goto_53

    .line 360
    :cond_48
    iget-object v0, p0, Ljava/util/ServiceLoader$LazyIterator;->pending:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ljava/util/ServiceLoader$LazyIterator;->nextName:Ljava/lang/String;

    .line 361
    return v1

    .line 355
    :cond_53
    :goto_53
    iget-object v0, p0, Ljava/util/ServiceLoader$LazyIterator;->configs:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_5d

    .line 356
    const/4 v0, 0x0

    return v0

    .line 358
    :cond_5d
    iget-object v0, p0, Ljava/util/ServiceLoader$LazyIterator;->this$0:Ljava/util/ServiceLoader;

    iget-object v2, p0, Ljava/util/ServiceLoader$LazyIterator;->service:Ljava/lang/Class;

    iget-object v3, p0, Ljava/util/ServiceLoader$LazyIterator;->configs:Ljava/util/Enumeration;

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/URL;

    # invokes: Ljava/util/ServiceLoader;->parse(Ljava/lang/Class;Ljava/net/URL;)Ljava/util/Iterator;
    invoke-static {v0, v2, v3}, Ljava/util/ServiceLoader;->access$200(Ljava/util/ServiceLoader;Ljava/lang/Class;Ljava/net/URL;)Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Ljava/util/ServiceLoader$LazyIterator;->pending:Ljava/util/Iterator;

    goto :goto_3d
.end method

.method private greylist-max-o nextService()Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 365
    .local p0, "this":Ljava/util/ServiceLoader$LazyIterator;, "Ljava/util/ServiceLoader<TS;>.LazyIterator;"
    const-string v0, "Provider "

    invoke-direct {p0}, Ljava/util/ServiceLoader$LazyIterator;->hasNextService()Z

    move-result v1

    if-eqz v1, :cond_a9

    .line 367
    iget-object v1, p0, Ljava/util/ServiceLoader$LazyIterator;->nextName:Ljava/lang/String;

    .line 368
    .local v1, "cn":Ljava/lang/String;
    const/4 v2, 0x0

    iput-object v2, p0, Ljava/util/ServiceLoader$LazyIterator;->nextName:Ljava/lang/String;

    .line 369
    const/4 v2, 0x0

    .line 371
    .local v2, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    :try_start_f
    iget-object v4, p0, Ljava/util/ServiceLoader$LazyIterator;->loader:Ljava/lang/ClassLoader;

    invoke-static {v1, v3, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3
    :try_end_15
    .catch Ljava/lang/ClassNotFoundException; {:try_start_f .. :try_end_15} :catch_17

    move-object v2, v3

    .line 377
    goto :goto_31

    .line 372
    :catch_17
    move-exception v3

    .line 373
    .local v3, "x":Ljava/lang/ClassNotFoundException;
    iget-object v4, p0, Ljava/util/ServiceLoader$LazyIterator;->service:Ljava/lang/Class;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " not found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Ljava/util/ServiceLoader;->fail(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v4, v5, v3}, Ljava/util/ServiceLoader;->access$100(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 378
    .end local v3    # "x":Ljava/lang/ClassNotFoundException;
    :goto_31
    iget-object v3, p0, Ljava/util/ServiceLoader$LazyIterator;->service:Ljava/lang/Class;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_75

    .line 380
    new-instance v3, Ljava/lang/ClassCastException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Ljava/util/ServiceLoader$LazyIterator;->service:Ljava/lang/Class;

    .line 381
    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is not assignable from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    .line 382
    .local v3, "cce":Ljava/lang/ClassCastException;
    iget-object v4, p0, Ljava/util/ServiceLoader$LazyIterator;->service:Ljava/lang/Class;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " not a subtype"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Ljava/util/ServiceLoader;->fail(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v4, v5, v3}, Ljava/util/ServiceLoader;->access$100(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 388
    .end local v3    # "cce":Ljava/lang/ClassCastException;
    :cond_75
    :try_start_75
    iget-object v3, p0, Ljava/util/ServiceLoader$LazyIterator;->service:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 389
    .local v3, "p":Ljava/lang/Object;, "TS;"
    iget-object v4, p0, Ljava/util/ServiceLoader$LazyIterator;->this$0:Ljava/util/ServiceLoader;

    # getter for: Ljava/util/ServiceLoader;->providers:Ljava/util/LinkedHashMap;
    invoke-static {v4}, Ljava/util/ServiceLoader;->access$300(Ljava/util/ServiceLoader;)Ljava/util/LinkedHashMap;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_88
    .catchall {:try_start_75 .. :try_end_88} :catchall_89

    .line 390
    return-object v3

    .line 391
    .end local v3    # "p":Ljava/lang/Object;, "TS;"
    :catchall_89
    move-exception v3

    .line 392
    .local v3, "x":Ljava/lang/Throwable;
    iget-object v4, p0, Ljava/util/ServiceLoader$LazyIterator;->service:Ljava/lang/Class;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " could not be instantiated"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Ljava/util/ServiceLoader;->fail(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v4, v0, v3}, Ljava/util/ServiceLoader;->access$100(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 396
    .end local v3    # "x":Ljava/lang/Throwable;
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0

    .line 366
    .end local v1    # "cn":Ljava/lang/String;
    .end local v2    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_a9
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method


# virtual methods
.method public whitelist core-platform-api test-api hasNext()Z
    .registers 2

    .line 402
    .local p0, "this":Ljava/util/ServiceLoader$LazyIterator;, "Ljava/util/ServiceLoader<TS;>.LazyIterator;"
    invoke-direct {p0}, Ljava/util/ServiceLoader$LazyIterator;->hasNextService()Z

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 416
    .local p0, "this":Ljava/util/ServiceLoader$LazyIterator;, "Ljava/util/ServiceLoader<TS;>.LazyIterator;"
    invoke-direct {p0}, Ljava/util/ServiceLoader$LazyIterator;->nextService()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api remove()V
    .registers 2

    .line 428
    .local p0, "this":Ljava/util/ServiceLoader$LazyIterator;, "Ljava/util/ServiceLoader<TS;>.LazyIterator;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
