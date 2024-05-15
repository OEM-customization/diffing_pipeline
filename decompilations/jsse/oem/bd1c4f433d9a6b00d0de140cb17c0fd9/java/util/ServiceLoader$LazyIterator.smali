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
        "Ljava/util/Iterator",
        "<TS;>;"
    }
.end annotation


# instance fields
.field configs:Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation
.end field

.field loader:Ljava/lang/ClassLoader;

.field nextName:Ljava/lang/String;

.field pending:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field service:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TS;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljava/util/ServiceLoader;


# direct methods
.method private constructor <init>(Ljava/util/ServiceLoader;Ljava/lang/Class;Ljava/lang/ClassLoader;)V
    .registers 5
    .param p3, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TS;>;",
            "Ljava/lang/ClassLoader;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/ServiceLoader$LazyIterator;, "Ljava/util/ServiceLoader<TS;>.LazyIterator;"
    .local p1, "this$0":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<TS;>;"
    .local p2, "service":Ljava/lang/Class;, "Ljava/lang/Class<TS;>;"
    const/4 v0, 0x0

    .line 334
    iput-object p1, p0, Ljava/util/ServiceLoader$LazyIterator;->this$0:Ljava/util/ServiceLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    iput-object v0, p0, Ljava/util/ServiceLoader$LazyIterator;->configs:Ljava/util/Enumeration;

    .line 331
    iput-object v0, p0, Ljava/util/ServiceLoader$LazyIterator;->pending:Ljava/util/Iterator;

    .line 332
    iput-object v0, p0, Ljava/util/ServiceLoader$LazyIterator;->nextName:Ljava/lang/String;

    .line 335
    iput-object p2, p0, Ljava/util/ServiceLoader$LazyIterator;->service:Ljava/lang/Class;

    .line 336
    iput-object p3, p0, Ljava/util/ServiceLoader$LazyIterator;->loader:Ljava/lang/ClassLoader;

    .line 337
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/ServiceLoader;Ljava/lang/Class;Ljava/lang/ClassLoader;Ljava/util/ServiceLoader$LazyIterator;)V
    .registers 5
    .param p1, "this$0"    # Ljava/util/ServiceLoader;
    .param p2, "service"    # Ljava/lang/Class;
    .param p3, "loader"    # Ljava/lang/ClassLoader;
    .param p4, "-this3"    # Ljava/util/ServiceLoader$LazyIterator;

    .prologue
    .local p0, "this":Ljava/util/ServiceLoader$LazyIterator;, "Ljava/util/ServiceLoader<TS;>.LazyIterator;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/ServiceLoader$LazyIterator;-><init>(Ljava/util/ServiceLoader;Ljava/lang/Class;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method private hasNextService()Z
    .registers 7

    .prologue
    .local p0, "this":Ljava/util/ServiceLoader$LazyIterator;, "Ljava/util/ServiceLoader<TS;>.LazyIterator;"
    const/4 v5, 0x1

    .line 340
    iget-object v2, p0, Ljava/util/ServiceLoader$LazyIterator;->nextName:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 341
    return v5

    .line 343
    :cond_6
    iget-object v2, p0, Ljava/util/ServiceLoader$LazyIterator;->configs:Ljava/util/Enumeration;

    if-nez v2, :cond_2e

    .line 345
    :try_start_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "META-INF/services/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/util/ServiceLoader$LazyIterator;->service:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 346
    .local v0, "fullName":Ljava/lang/String;
    iget-object v2, p0, Ljava/util/ServiceLoader$LazyIterator;->loader:Ljava/lang/ClassLoader;

    if-nez v2, :cond_46

    .line 347
    invoke-static {v0}, Ljava/lang/ClassLoader;->getSystemResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v2

    iput-object v2, p0, Ljava/util/ServiceLoader$LazyIterator;->configs:Ljava/util/Enumeration;
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_2e} :catch_4f

    .line 354
    .end local v0    # "fullName":Ljava/lang/String;
    :cond_2e
    :goto_2e
    iget-object v2, p0, Ljava/util/ServiceLoader$LazyIterator;->pending:Ljava/util/Iterator;

    if-eqz v2, :cond_3c

    iget-object v2, p0, Ljava/util/ServiceLoader$LazyIterator;->pending:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_6c

    .line 355
    :cond_3c
    iget-object v2, p0, Ljava/util/ServiceLoader$LazyIterator;->configs:Ljava/util/Enumeration;

    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_59

    .line 356
    const/4 v2, 0x0

    return v2

    .line 349
    .restart local v0    # "fullName":Ljava/lang/String;
    :cond_46
    :try_start_46
    iget-object v2, p0, Ljava/util/ServiceLoader$LazyIterator;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v2

    iput-object v2, p0, Ljava/util/ServiceLoader$LazyIterator;->configs:Ljava/util/Enumeration;
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_4e} :catch_4f

    goto :goto_2e

    .line 350
    .end local v0    # "fullName":Ljava/lang/String;
    :catch_4f
    move-exception v1

    .line 351
    .local v1, "x":Ljava/io/IOException;
    iget-object v2, p0, Ljava/util/ServiceLoader$LazyIterator;->service:Ljava/lang/Class;

    const-string/jumbo v3, "Error locating configuration files"

    invoke-static {v2, v3, v1}, Ljava/util/ServiceLoader;->-wrap1(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2e

    .line 358
    .end local v1    # "x":Ljava/io/IOException;
    :cond_59
    iget-object v3, p0, Ljava/util/ServiceLoader$LazyIterator;->this$0:Ljava/util/ServiceLoader;

    iget-object v4, p0, Ljava/util/ServiceLoader$LazyIterator;->service:Ljava/lang/Class;

    iget-object v2, p0, Ljava/util/ServiceLoader$LazyIterator;->configs:Ljava/util/Enumeration;

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/URL;

    invoke-static {v3, v4, v2}, Ljava/util/ServiceLoader;->-wrap0(Ljava/util/ServiceLoader;Ljava/lang/Class;Ljava/net/URL;)Ljava/util/Iterator;

    move-result-object v2

    iput-object v2, p0, Ljava/util/ServiceLoader$LazyIterator;->pending:Ljava/util/Iterator;

    goto :goto_2e

    .line 360
    :cond_6c
    iget-object v2, p0, Ljava/util/ServiceLoader$LazyIterator;->pending:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Ljava/util/ServiceLoader$LazyIterator;->nextName:Ljava/lang/String;

    .line 361
    return v5
.end method

.method private nextService()Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .prologue
    .line 365
    .local p0, "this":Ljava/util/ServiceLoader$LazyIterator;, "Ljava/util/ServiceLoader<TS;>.LazyIterator;"
    invoke-direct {p0}, Ljava/util/ServiceLoader$LazyIterator;->hasNextService()Z

    move-result v6

    if-nez v6, :cond_c

    .line 366
    new-instance v6, Ljava/util/NoSuchElementException;

    invoke-direct {v6}, Ljava/util/NoSuchElementException;-><init>()V

    throw v6

    .line 367
    :cond_c
    iget-object v2, p0, Ljava/util/ServiceLoader$LazyIterator;->nextName:Ljava/lang/String;

    .line 368
    .local v2, "cn":Ljava/lang/String;
    const/4 v6, 0x0

    iput-object v6, p0, Ljava/util/ServiceLoader$LazyIterator;->nextName:Ljava/lang/String;

    .line 369
    const/4 v0, 0x0

    .line 371
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_12
    iget-object v6, p0, Ljava/util/ServiceLoader$LazyIterator;->loader:Ljava/lang/ClassLoader;

    const/4 v7, 0x0

    invoke-static {v2, v7, v6}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_18
    .catch Ljava/lang/ClassNotFoundException; {:try_start_12 .. :try_end_18} :catch_7c

    move-result-object v0

    .line 378
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_19
    iget-object v6, p0, Ljava/util/ServiceLoader$LazyIterator;->service:Ljava/lang/Class;

    invoke-virtual {v6, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_68

    .line 380
    new-instance v1, Ljava/lang/ClassCastException;

    .line 381
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Ljava/util/ServiceLoader$LazyIterator;->service:Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " is not assignable from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 380
    invoke-direct {v1, v6}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    .line 382
    .local v1, "cce":Ljava/lang/ClassCastException;
    iget-object v6, p0, Ljava/util/ServiceLoader$LazyIterator;->service:Ljava/lang/Class;

    .line 383
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Provider "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " not a subtype"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 382
    invoke-static {v6, v7, v1}, Ljava/util/ServiceLoader;->-wrap1(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 388
    .end local v1    # "cce":Ljava/lang/ClassCastException;
    :cond_68
    :try_start_68
    iget-object v6, p0, Ljava/util/ServiceLoader$LazyIterator;->service:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 389
    .local v3, "p":Ljava/lang/Object;, "TS;"
    iget-object v6, p0, Ljava/util/ServiceLoader$LazyIterator;->this$0:Ljava/util/ServiceLoader;

    invoke-static {v6}, Ljava/util/ServiceLoader;->-get1(Ljava/util/ServiceLoader;)Ljava/util/LinkedHashMap;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7b
    .catch Ljava/lang/Throwable; {:try_start_68 .. :try_end_7b} :catch_9f

    .line 390
    return-object v3

    .line 372
    .end local v3    # "p":Ljava/lang/Object;, "TS;"
    .restart local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_7c
    move-exception v4

    .line 373
    .local v4, "x":Ljava/lang/ClassNotFoundException;
    iget-object v6, p0, Ljava/util/ServiceLoader$LazyIterator;->service:Ljava/lang/Class;

    .line 375
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Provider "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " not found"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 373
    invoke-static {v6, v7, v4}, Ljava/util/ServiceLoader;->-wrap1(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .line 391
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "x":Ljava/lang/ClassNotFoundException;
    :catch_9f
    move-exception v5

    .line 392
    .local v5, "x":Ljava/lang/Throwable;
    iget-object v6, p0, Ljava/util/ServiceLoader$LazyIterator;->service:Ljava/lang/Class;

    .line 393
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Provider "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " could not be instantiated"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 392
    invoke-static {v6, v7, v5}, Ljava/util/ServiceLoader;->-wrap1(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 396
    new-instance v6, Ljava/lang/Error;

    invoke-direct {v6}, Ljava/lang/Error;-><init>()V

    throw v6
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .prologue
    .line 402
    .local p0, "this":Ljava/util/ServiceLoader$LazyIterator;, "Ljava/util/ServiceLoader<TS;>.LazyIterator;"
    invoke-direct {p0}, Ljava/util/ServiceLoader$LazyIterator;->hasNextService()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .prologue
    .line 416
    .local p0, "this":Ljava/util/ServiceLoader$LazyIterator;, "Ljava/util/ServiceLoader<TS;>.LazyIterator;"
    invoke-direct {p0}, Ljava/util/ServiceLoader$LazyIterator;->nextService()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    .prologue
    .line 428
    .local p0, "this":Ljava/util/ServiceLoader$LazyIterator;, "Ljava/util/ServiceLoader<TS;>.LazyIterator;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
