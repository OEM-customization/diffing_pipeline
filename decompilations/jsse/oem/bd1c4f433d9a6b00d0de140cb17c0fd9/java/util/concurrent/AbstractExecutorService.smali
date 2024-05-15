.class public abstract Ljava/util/concurrent/AbstractExecutorService;
.super Ljava/lang/Object;
.source "AbstractExecutorService.java"

# interfaces
.implements Ljava/util/concurrent/ExecutorService;


# static fields
.field static final synthetic -assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const-class v0, Ljava/util/concurrent/AbstractExecutorService;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Ljava/util/concurrent/AbstractExecutorService;->-assertionsDisabled:Z

    .line 77
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static cancelAll(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/concurrent/Future",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 304
    .local p0, "futures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/concurrent/Future<TT;>;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/util/concurrent/AbstractExecutorService;->cancelAll(Ljava/util/ArrayList;I)V

    .line 305
    return-void
.end method

.method private static cancelAll(Ljava/util/ArrayList;I)V
    .registers 5
    .param p1, "j"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/concurrent/Future",
            "<TT;>;>;I)V"
        }
    .end annotation

    .prologue
    .line 309
    .local p0, "futures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/concurrent/Future<TT;>;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "size":I
    :goto_4
    if-ge p1, v0, :cond_13

    .line 310
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 309
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 311
    :cond_13
    return-void
.end method

.method private doInvokeAny(Ljava/util/Collection;ZJ)Ljava/lang/Object;
    .registers 22
    .param p2, "timed"    # Z
    .param p3, "nanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/concurrent/Callable",
            "<TT;>;>;ZJ)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 150
    .local p1, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    if-nez p1, :cond_8

    .line 151
    new-instance v14, Ljava/lang/NullPointerException;

    invoke-direct {v14}, Ljava/lang/NullPointerException;-><init>()V

    throw v14

    .line 152
    :cond_8
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v12

    .line 153
    .local v12, "ntasks":I
    if-nez v12, :cond_14

    .line 154
    new-instance v14, Ljava/lang/IllegalArgumentException;

    invoke-direct {v14}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v14

    .line 155
    :cond_14
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 157
    .local v10, "futures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/concurrent/Future<TT;>;>;"
    new-instance v3, Ljava/util/concurrent/ExecutorCompletionService;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Ljava/util/concurrent/ExecutorCompletionService;-><init>(Ljava/util/concurrent/Executor;)V

    .line 168
    .local v3, "ecs":Ljava/util/concurrent/ExecutorCompletionService;, "Ljava/util/concurrent/ExecutorCompletionService<TT;>;"
    const/4 v6, 0x0

    .line 169
    .local v6, "ee":Ljava/util/concurrent/ExecutionException;
    if-eqz p2, :cond_63

    :try_start_23
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    add-long v4, v14, p3

    .line 170
    .local v4, "deadline":J
    :goto_29
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 173
    .local v11, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/concurrent/Callable<TT;>;>;"
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/concurrent/Callable;

    invoke-virtual {v3, v14}, Ljava/util/concurrent/ExecutorCompletionService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3a
    .catchall {:try_start_23 .. :try_end_3a} :catchall_70

    .line 174
    add-int/lit8 v12, v12, -0x1

    .line 175
    const/4 v2, 0x1

    .local v2, "active":I
    move-object v7, v6

    .line 178
    .end local v6    # "ee":Ljava/util/concurrent/ExecutionException;
    .local v7, "ee":Ljava/util/concurrent/ExecutionException;
    :goto_3e
    :try_start_3e
    invoke-virtual {v3}, Ljava/util/concurrent/ExecutorCompletionService;->poll()Ljava/util/concurrent/Future;

    move-result-object v9

    .line 179
    .local v9, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    if-nez v9, :cond_57

    .line 180
    if-lez v12, :cond_66

    .line 181
    add-int/lit8 v12, v12, -0x1

    .line 182
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/concurrent/Callable;

    invoke-virtual {v3, v14}, Ljava/util/concurrent/ExecutorCompletionService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_55
    .catchall {:try_start_3e .. :try_end_55} :catchall_87

    .line 183
    add-int/lit8 v2, v2, 0x1

    .line 196
    :cond_57
    :goto_57
    if-eqz v9, :cond_a3

    .line 197
    add-int/lit8 v2, v2, -0x1

    .line 199
    :try_start_5b
    invoke-interface {v9}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_5e
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_5b .. :try_end_5e} :catch_9e
    .catch Ljava/lang/RuntimeException; {:try_start_5b .. :try_end_5e} :catch_96
    .catchall {:try_start_5b .. :try_end_5e} :catchall_87

    move-result-object v14

    .line 213
    invoke-static {v10}, Ljava/util/concurrent/AbstractExecutorService;->cancelAll(Ljava/util/ArrayList;)V

    .line 199
    return-object v14

    .line 169
    .end local v2    # "active":I
    .end local v4    # "deadline":J
    .end local v7    # "ee":Ljava/util/concurrent/ExecutionException;
    .end local v9    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    .end local v11    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/concurrent/Callable<TT;>;>;"
    .restart local v6    # "ee":Ljava/util/concurrent/ExecutionException;
    :cond_63
    const-wide/16 v4, 0x0

    .restart local v4    # "deadline":J
    goto :goto_29

    .line 185
    .end local v6    # "ee":Ljava/util/concurrent/ExecutionException;
    .restart local v2    # "active":I
    .restart local v7    # "ee":Ljava/util/concurrent/ExecutionException;
    .restart local v9    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    .restart local v11    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/concurrent/Callable<TT;>;>;"
    :cond_66
    if-nez v2, :cond_75

    .line 208
    if-nez v7, :cond_a1

    .line 209
    :try_start_6a
    new-instance v6, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v6}, Ljava/util/concurrent/ExecutionException;-><init>()V
    :try_end_6f
    .catchall {:try_start_6a .. :try_end_6f} :catchall_87

    .line 210
    .end local v7    # "ee":Ljava/util/concurrent/ExecutionException;
    .local v6, "ee":Ljava/util/concurrent/ExecutionException;
    :goto_6f
    :try_start_6f
    throw v6
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_70

    .line 212
    .end local v2    # "active":I
    .end local v4    # "deadline":J
    .end local v6    # "ee":Ljava/util/concurrent/ExecutionException;
    .end local v9    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    .end local v11    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/concurrent/Callable<TT;>;>;"
    :catchall_70
    move-exception v14

    .line 213
    :goto_71
    invoke-static {v10}, Ljava/util/concurrent/AbstractExecutorService;->cancelAll(Ljava/util/ArrayList;)V

    .line 212
    throw v14

    .line 187
    .restart local v2    # "active":I
    .restart local v4    # "deadline":J
    .restart local v7    # "ee":Ljava/util/concurrent/ExecutionException;
    .restart local v9    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    .restart local v11    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/concurrent/Callable<TT;>;>;"
    :cond_75
    if-eqz p2, :cond_91

    .line 188
    :try_start_77
    sget-object v14, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, p3

    invoke-virtual {v3, v0, v1, v14}, Ljava/util/concurrent/ExecutorCompletionService;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;

    move-result-object v9

    .line 189
    if-nez v9, :cond_8a

    .line 190
    new-instance v14, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v14}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v14

    .line 212
    .end local v9    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    :catchall_87
    move-exception v14

    move-object v6, v7

    .end local v7    # "ee":Ljava/util/concurrent/ExecutionException;
    .restart local v6    # "ee":Ljava/util/concurrent/ExecutionException;
    goto :goto_71

    .line 191
    .end local v6    # "ee":Ljava/util/concurrent/ExecutionException;
    .restart local v7    # "ee":Ljava/util/concurrent/ExecutionException;
    .restart local v9    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    :cond_8a
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    sub-long p3, v4, v14

    goto :goto_57

    .line 194
    :cond_91
    invoke-virtual {v3}, Ljava/util/concurrent/ExecutorCompletionService;->take()Ljava/util/concurrent/Future;

    move-result-object v9

    goto :goto_57

    .line 202
    :catch_96
    move-exception v13

    .line 203
    .local v13, "rex":Ljava/lang/RuntimeException;
    new-instance v6, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v6, v13}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V
    :try_end_9c
    .catchall {:try_start_77 .. :try_end_9c} :catchall_87

    .end local v7    # "ee":Ljava/util/concurrent/ExecutionException;
    .end local v13    # "rex":Ljava/lang/RuntimeException;
    .restart local v6    # "ee":Ljava/util/concurrent/ExecutionException;
    :goto_9c
    move-object v7, v6

    .end local v6    # "ee":Ljava/util/concurrent/ExecutionException;
    .restart local v7    # "ee":Ljava/util/concurrent/ExecutionException;
    goto :goto_3e

    .line 200
    :catch_9e
    move-exception v8

    .line 201
    .local v8, "eex":Ljava/util/concurrent/ExecutionException;
    move-object v6, v8

    .end local v7    # "ee":Ljava/util/concurrent/ExecutionException;
    .restart local v6    # "ee":Ljava/util/concurrent/ExecutionException;
    goto :goto_9c

    .end local v6    # "ee":Ljava/util/concurrent/ExecutionException;
    .end local v8    # "eex":Ljava/util/concurrent/ExecutionException;
    .restart local v7    # "ee":Ljava/util/concurrent/ExecutionException;
    :cond_a1
    move-object v6, v7

    .end local v7    # "ee":Ljava/util/concurrent/ExecutionException;
    .restart local v6    # "ee":Ljava/util/concurrent/ExecutionException;
    goto :goto_6f

    .end local v6    # "ee":Ljava/util/concurrent/ExecutionException;
    .restart local v7    # "ee":Ljava/util/concurrent/ExecutionException;
    :cond_a3
    move-object v6, v7

    .end local v7    # "ee":Ljava/util/concurrent/ExecutionException;
    .restart local v6    # "ee":Ljava/util/concurrent/ExecutionException;
    goto :goto_9c
.end method


# virtual methods
.method public invokeAll(Ljava/util/Collection;)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/concurrent/Callable",
            "<TT;>;>;)",
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/Future",
            "<TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 235
    .local p1, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    if-nez p1, :cond_8

    .line 236
    new-instance v10, Ljava/lang/NullPointerException;

    invoke-direct {v10}, Ljava/lang/NullPointerException;-><init>()V

    throw v10

    .line 237
    :cond_8
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v10

    invoke-direct {v2, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 239
    .local v2, "futures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/concurrent/Future<TT;>;>;"
    :try_start_11
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "t$iterator":Ljava/util/Iterator;
    :goto_15
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_31

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/concurrent/Callable;

    .line 240
    .local v8, "t":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    invoke-virtual {p0, v8}, Ljava/util/concurrent/AbstractExecutorService;->newTaskFor(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/RunnableFuture;

    move-result-object v1

    .line 241
    .local v1, "f":Ljava/util/concurrent/RunnableFuture;, "Ljava/util/concurrent/RunnableFuture<TT;>;"
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    invoke-virtual {p0, v1}, Ljava/util/concurrent/AbstractExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_2b} :catch_2c

    goto :goto_15

    .line 253
    .end local v1    # "f":Ljava/util/concurrent/RunnableFuture;, "Ljava/util/concurrent/RunnableFuture<TT;>;"
    .end local v8    # "t":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    .end local v9    # "t$iterator":Ljava/util/Iterator;
    :catch_2c
    move-exception v7

    .line 254
    .local v7, "t":Ljava/lang/Throwable;
    invoke-static {v2}, Ljava/util/concurrent/AbstractExecutorService;->cancelAll(Ljava/util/ArrayList;)V

    .line 255
    throw v7

    .line 244
    .end local v7    # "t":Ljava/lang/Throwable;
    .restart local v9    # "t$iterator":Ljava/util/Iterator;
    :cond_31
    const/4 v3, 0x0

    .local v3, "i":I
    :try_start_32
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    .local v6, "size":I
    :goto_36
    if-ge v3, v6, :cond_4e

    .line 245
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 246
    .local v0, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_41} :catch_2c

    move-result v10

    if-nez v10, :cond_47

    .line 247
    :try_start_44
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_47
    .catch Ljava/util/concurrent/CancellationException; {:try_start_44 .. :try_end_47} :catch_4c
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_44 .. :try_end_47} :catch_4a
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_47} :catch_2c

    .line 244
    :cond_47
    :goto_47
    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    .line 249
    :catch_4a
    move-exception v5

    .local v5, "ignore":Ljava/util/concurrent/ExecutionException;
    goto :goto_47

    .line 248
    .end local v5    # "ignore":Ljava/util/concurrent/ExecutionException;
    :catch_4c
    move-exception v4

    .local v4, "ignore":Ljava/util/concurrent/CancellationException;
    goto :goto_47

    .line 252
    .end local v0    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    .end local v4    # "ignore":Ljava/util/concurrent/CancellationException;
    :cond_4e
    return-object v2
.end method

.method public invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;
    .registers 29
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/concurrent/Callable",
            "<TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/Future",
            "<TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 262
    .local p1, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    if-nez p1, :cond_8

    .line 263
    new-instance v19, Ljava/lang/NullPointerException;

    invoke-direct/range {v19 .. v19}, Ljava/lang/NullPointerException;-><init>()V

    throw v19

    .line 264
    :cond_8
    move-object/from16 v0, p4

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v12

    .line 265
    .local v12, "nanos":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v20

    add-long v4, v20, v12

    .line 266
    .local v4, "deadline":J
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v19

    move/from16 v0, v19

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 267
    .local v7, "futures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/concurrent/Future<TT;>;>;"
    const/4 v11, 0x0

    .line 269
    .local v11, "j":I
    :try_start_22
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "t$iterator":Ljava/util/Iterator;
    :goto_26
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_45

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/concurrent/Callable;

    .line 270
    .local v16, "t":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/concurrent/AbstractExecutorService;->newTaskFor(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/RunnableFuture;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_3f} :catch_40

    goto :goto_26

    .line 294
    .end local v16    # "t":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    .end local v17    # "t$iterator":Ljava/util/Iterator;
    :catch_40
    move-exception v15

    .line 295
    .local v15, "t":Ljava/lang/Throwable;
    invoke-static {v7}, Ljava/util/concurrent/AbstractExecutorService;->cancelAll(Ljava/util/ArrayList;)V

    .line 296
    throw v15

    .line 272
    .end local v15    # "t":Ljava/lang/Throwable;
    .restart local v17    # "t$iterator":Ljava/util/Iterator;
    :cond_45
    :try_start_45
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_48} :catch_40

    move-result v14

    .line 276
    .local v14, "size":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_4a
    if-ge v8, v14, :cond_71

    .line 277
    if-nez v8, :cond_5a

    move-wide/from16 v20, v12

    :goto_50
    const-wide/16 v22, 0x0

    cmp-long v19, v20, v22

    if-gtz v19, :cond_61

    .line 299
    :goto_56
    invoke-static {v7, v11}, Ljava/util/concurrent/AbstractExecutorService;->cancelAll(Ljava/util/ArrayList;I)V

    .line 300
    return-object v7

    .line 277
    :cond_5a
    :try_start_5a
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v20

    sub-long v20, v4, v20

    goto :goto_50

    .line 279
    :cond_61
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Runnable;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/concurrent/AbstractExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 276
    add-int/lit8 v8, v8, 0x1

    goto :goto_4a

    .line 282
    :cond_71
    :goto_71
    if-ge v11, v14, :cond_91

    .line 283
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/Future;

    .line 284
    .local v6, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    invoke-interface {v6}, Ljava/util/concurrent/Future;->isDone()Z
    :try_end_7c
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_7c} :catch_40

    move-result v19

    if-nez v19, :cond_8e

    .line 285
    :try_start_7f
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v20

    sub-long v20, v4, v20

    sget-object v19, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    invoke-interface {v6, v0, v1, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_8e
    .catch Ljava/util/concurrent/CancellationException; {:try_start_7f .. :try_end_8e} :catch_92
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_7f .. :try_end_8e} :catch_94
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_7f .. :try_end_8e} :catch_96
    .catch Ljava/lang/Throwable; {:try_start_7f .. :try_end_8e} :catch_40

    .line 282
    :cond_8e
    :goto_8e
    add-int/lit8 v11, v11, 0x1

    goto :goto_71

    .line 293
    .end local v6    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    :cond_91
    return-object v7

    .line 286
    .restart local v6    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    :catch_92
    move-exception v9

    .local v9, "ignore":Ljava/util/concurrent/CancellationException;
    goto :goto_8e

    .line 287
    .end local v9    # "ignore":Ljava/util/concurrent/CancellationException;
    :catch_94
    move-exception v10

    .local v10, "ignore":Ljava/util/concurrent/ExecutionException;
    goto :goto_8e

    .line 288
    .end local v10    # "ignore":Ljava/util/concurrent/ExecutionException;
    :catch_96
    move-exception v18

    .local v18, "timedOut":Ljava/util/concurrent/TimeoutException;
    goto :goto_56
.end method

.method public invokeAny(Ljava/util/Collection;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/concurrent/Callable",
            "<TT;>;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 220
    .local p1, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    :try_start_3
    invoke-direct {p0, p1, v1, v2, v3}, Ljava/util/concurrent/AbstractExecutorService;->doInvokeAny(Ljava/util/Collection;ZJ)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_6} :catch_8

    move-result-object v1

    return-object v1

    .line 221
    :catch_8
    move-exception v0

    .line 222
    .local v0, "cannotHappen":Ljava/util/concurrent/TimeoutException;
    sget-boolean v1, Ljava/util/concurrent/AbstractExecutorService;->-assertionsDisabled:Z

    if-nez v1, :cond_13

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 223
    :cond_13
    const/4 v1, 0x0

    return-object v1
.end method

.method public invokeAny(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 9
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/concurrent/Callable",
            "<TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 230
    .local p1, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v2, v0, v1}, Ljava/util/concurrent/AbstractExecutorService;->doInvokeAny(Ljava/util/Collection;ZJ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/RunnableFuture;
    .registers 4
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/RunnableFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 93
    .local p2, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, p1, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected newTaskFor(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/RunnableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Ljava/util/concurrent/RunnableFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 108
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method public submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .registers 4
    .param p1, "task"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 116
    if-nez p1, :cond_9

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 117
    :cond_9
    invoke-virtual {p0, p1, v1}, Ljava/util/concurrent/AbstractExecutorService;->newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/RunnableFuture;

    move-result-object v0

    .line 118
    .local v0, "ftask":Ljava/util/concurrent/RunnableFuture;, "Ljava/util/concurrent/RunnableFuture<Ljava/lang/Void;>;"
    invoke-virtual {p0, v0}, Ljava/util/concurrent/AbstractExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 119
    return-object v0
.end method

.method public submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .registers 5
    .param p1, "task"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/Future",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 127
    .local p2, "result":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_8

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 128
    :cond_8
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/AbstractExecutorService;->newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/RunnableFuture;

    move-result-object v0

    .line 129
    .local v0, "ftask":Ljava/util/concurrent/RunnableFuture;, "Ljava/util/concurrent/RunnableFuture<TT;>;"
    invoke-virtual {p0, v0}, Ljava/util/concurrent/AbstractExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 130
    return-object v0
.end method

.method public submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Ljava/util/concurrent/Future",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 138
    .local p1, "task":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    if-nez p1, :cond_8

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 139
    :cond_8
    invoke-virtual {p0, p1}, Ljava/util/concurrent/AbstractExecutorService;->newTaskFor(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/RunnableFuture;

    move-result-object v0

    .line 140
    .local v0, "ftask":Ljava/util/concurrent/RunnableFuture;, "Ljava/util/concurrent/RunnableFuture<TT;>;"
    invoke-virtual {p0, v0}, Ljava/util/concurrent/AbstractExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 141
    return-object v0
.end method
