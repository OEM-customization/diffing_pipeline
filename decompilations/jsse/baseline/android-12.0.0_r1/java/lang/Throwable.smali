.class public Ljava/lang/Throwable;
.super Ljava/lang/Object;
.source "Throwable.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/Throwable$WrappedPrintWriter;,
        Ljava/lang/Throwable$WrappedPrintStream;,
        Ljava/lang/Throwable$PrintStreamOrWriter;,
        Ljava/lang/Throwable$SentinelHolder;
    }
.end annotation


# static fields
.field private static final greylist-max-o CAUSE_CAPTION:Ljava/lang/String; = "Caused by: "

.field private static greylist-max-o EMPTY_THROWABLE_ARRAY:[Ljava/lang/Throwable; = null

.field private static final greylist-max-o NULL_CAUSE_MESSAGE:Ljava/lang/String; = "Cannot suppress a null exception."

.field private static final greylist-max-o SELF_SUPPRESSION_MESSAGE:Ljava/lang/String; = "Self-suppression not permitted"

.field private static final greylist-max-o SUPPRESSED_CAPTION:Ljava/lang/String; = "Suppressed: "

.field private static final whitelist serialVersionUID:J = -0x2a39cad8c6884735L


# instance fields
.field private transient greylist backtrace:Ljava/lang/Object;

.field private greylist cause:Ljava/lang/Throwable;

.field private greylist detailMessage:Ljava/lang/String;

.field private greylist stackTrace:[Ljava/lang/StackTraceElement;

.field private greylist-max-r suppressedExceptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 2

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    iput-object p0, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;

    .line 216
    sget-object v0, Llibcore/util/EmptyArray;->STACK_TRACE_ELEMENT:[Ljava/lang/StackTraceElement;

    iput-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    .line 239
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    .line 262
    invoke-virtual {p0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 263
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    iput-object p0, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;

    .line 216
    sget-object v0, Llibcore/util/EmptyArray;->STACK_TRACE_ELEMENT:[Ljava/lang/StackTraceElement;

    iput-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    .line 239
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    .line 277
    invoke-virtual {p0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 278
    iput-object p1, p0, Ljava/lang/Throwable;->detailMessage:Ljava/lang/String;

    .line 279
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    iput-object p0, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;

    .line 216
    sget-object v0, Llibcore/util/EmptyArray;->STACK_TRACE_ELEMENT:[Ljava/lang/StackTraceElement;

    iput-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    .line 239
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    .line 299
    invoke-virtual {p0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 300
    iput-object p1, p0, Ljava/lang/Throwable;->detailMessage:Ljava/lang/String;

    .line 301
    iput-object p2, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;

    .line 302
    return-void
.end method

.method protected constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/Throwable;ZZ)V
    .registers 6
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .param p3, "enableSuppression"    # Z
    .param p4, "writableStackTrace"    # Z

    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    iput-object p0, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;

    .line 216
    sget-object v0, Llibcore/util/EmptyArray;->STACK_TRACE_ELEMENT:[Ljava/lang/StackTraceElement;

    iput-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    .line 239
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    .line 371
    const/4 v0, 0x0

    if-eqz p4, :cond_16

    .line 372
    invoke-virtual {p0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    goto :goto_18

    .line 374
    :cond_16
    iput-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    .line 376
    :goto_18
    iput-object p1, p0, Ljava/lang/Throwable;->detailMessage:Ljava/lang/String;

    .line 377
    iput-object p2, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;

    .line 378
    if-nez p3, :cond_20

    .line 379
    iput-object v0, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    .line 380
    :cond_20
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    iput-object p0, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;

    .line 216
    sget-object v0, Llibcore/util/EmptyArray;->STACK_TRACE_ELEMENT:[Ljava/lang/StackTraceElement;

    iput-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    .line 239
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    .line 322
    invoke-virtual {p0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 323
    if-nez p1, :cond_16

    const/4 v0, 0x0

    goto :goto_1a

    :cond_16
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1a
    iput-object v0, p0, Ljava/lang/Throwable;->detailMessage:Ljava/lang/String;

    .line 324
    iput-object p1, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;

    .line 325
    return-void
.end method

.method private declared-synchronized greylist getOurStackTrace()[Ljava/lang/StackTraceElement;
    .registers 3

    monitor-enter p0

    .line 845
    :try_start_1
    iget-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    sget-object v1, Llibcore/util/EmptyArray;->STACK_TRACE_ELEMENT:[Ljava/lang/StackTraceElement;

    if-eq v0, v1, :cond_16

    iget-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    if-nez v0, :cond_10

    iget-object v1, p0, Ljava/lang/Throwable;->backtrace:Ljava/lang/Object;

    if-eqz v1, :cond_10

    goto :goto_16

    .line 858
    .end local p0    # "this":Ljava/lang/Throwable;
    :cond_10
    if-nez v0, :cond_27

    .line 861
    sget-object v0, Llibcore/util/EmptyArray;->STACK_TRACE_ELEMENT:[Ljava/lang/StackTraceElement;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_2b

    monitor-exit p0

    return-object v0

    .line 852
    :cond_16
    :goto_16
    :try_start_16
    iget-object v0, p0, Ljava/lang/Throwable;->backtrace:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Throwable;->nativeGetStackTrace(Ljava/lang/Object;)[Ljava/lang/StackTraceElement;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    .line 853
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/lang/Throwable;->backtrace:Ljava/lang/Object;

    .line 854
    if-nez v0, :cond_27

    .line 855
    sget-object v0, Llibcore/util/EmptyArray;->STACK_TRACE_ELEMENT:[Ljava/lang/StackTraceElement;
    :try_end_25
    .catchall {:try_start_16 .. :try_end_25} :catchall_2b

    monitor-exit p0

    return-object v0

    .line 863
    :cond_27
    :try_start_27
    iget-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;
    :try_end_29
    .catchall {:try_start_27 .. :try_end_29} :catchall_2b

    monitor-exit p0

    return-object v0

    .line 844
    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static native greylist-max-r nativeFillInStackTrace()Ljava/lang/Object;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetStackTrace(Ljava/lang/Object;)[Ljava/lang/StackTraceElement;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private greylist-max-o printEnclosedStackTrace(Ljava/lang/Throwable$PrintStreamOrWriter;[Ljava/lang/StackTraceElement;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .registers 26
    .param p1, "s"    # Ljava/lang/Throwable$PrintStreamOrWriter;
    .param p2, "enclosingTrace"    # [Ljava/lang/StackTraceElement;
    .param p3, "caption"    # Ljava/lang/String;
    .param p4, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable$PrintStreamOrWriter;",
            "[",
            "Ljava/lang/StackTraceElement;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 695
    .local p5, "dejaVu":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Throwable;>;"
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-interface {v10, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 696
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t[CIRCULAR REFERENCE:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/Throwable$PrintStreamOrWriter;->println(Ljava/lang/Object;)V

    move-object/from16 v15, p3

    goto/16 :goto_f5

    .line 698
    :cond_2d
    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 700
    invoke-direct/range {p0 .. p0}, Ljava/lang/Throwable;->getOurStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v11

    .line 701
    .local v11, "trace":[Ljava/lang/StackTraceElement;
    array-length v1, v11

    add-int/lit8 v1, v1, -0x1

    .line 702
    .local v1, "m":I
    array-length v2, v8

    add-int/lit8 v2, v2, -0x1

    move v12, v1

    move v13, v2

    .line 703
    .end local v1    # "m":I
    .local v12, "m":I
    .local v13, "n":I
    :goto_3c
    if-ltz v12, :cond_4f

    if-ltz v13, :cond_4f

    aget-object v1, v11, v12

    aget-object v2, v8, v13

    invoke-virtual {v1, v2}, Ljava/lang/StackTraceElement;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 704
    add-int/lit8 v12, v12, -0x1

    add-int/lit8 v13, v13, -0x1

    goto :goto_3c

    .line 706
    :cond_4f
    array-length v1, v11

    add-int/lit8 v1, v1, -0x1

    sub-int v14, v1, v12

    .line 709
    .local v14, "framesInCommon":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v15, p3

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/Throwable$PrintStreamOrWriter;->println(Ljava/lang/Object;)V

    .line 710
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6c
    if-gt v1, v12, :cond_8a

    .line 711
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\tat "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v11, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/Throwable$PrintStreamOrWriter;->println(Ljava/lang/Object;)V

    .line 710
    add-int/lit8 v1, v1, 0x1

    goto :goto_6c

    .line 712
    .end local v1    # "i":I
    :cond_8a
    if-eqz v14, :cond_a8

    .line 713
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\t... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " more"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/Throwable$PrintStreamOrWriter;->println(Ljava/lang/Object;)V

    .line 716
    :cond_a8
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Throwable;->getSuppressed()[Ljava/lang/Throwable;

    move-result-object v6

    array-length v5, v6

    const/4 v1, 0x0

    move v4, v1

    :goto_af
    if-ge v4, v5, :cond_e1

    aget-object v16, v6, v4

    .line 717
    .local v16, "se":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const-string v18, "Suppressed: "

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    move-object v3, v11

    move/from16 v19, v4

    move-object/from16 v4, v18

    move/from16 v18, v5

    move-object/from16 v5, v17

    move-object/from16 v17, v6

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Ljava/lang/Throwable;->printEnclosedStackTrace(Ljava/lang/Throwable$PrintStreamOrWriter;[Ljava/lang/StackTraceElement;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 716
    .end local v16    # "se":Ljava/lang/Throwable;
    add-int/lit8 v4, v19, 0x1

    move-object/from16 v6, v17

    move/from16 v5, v18

    goto :goto_af

    .line 721
    :cond_e1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v16

    .line 722
    .local v16, "ourCause":Ljava/lang/Throwable;
    if-eqz v16, :cond_f5

    .line 723
    const-string v4, "Caused by: "

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    move-object v3, v11

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Ljava/lang/Throwable;->printEnclosedStackTrace(Ljava/lang/Throwable$PrintStreamOrWriter;[Ljava/lang/StackTraceElement;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 725
    .end local v11    # "trace":[Ljava/lang/StackTraceElement;
    .end local v12    # "m":I
    .end local v13    # "n":I
    .end local v14    # "framesInCommon":I
    .end local v16    # "ourCause":Ljava/lang/Throwable;
    :cond_f5
    :goto_f5
    return-void
.end method

.method private greylist printStackTrace(Ljava/lang/Throwable$PrintStreamOrWriter;)V
    .registers 14
    .param p1, "s"    # Ljava/lang/Throwable$PrintStreamOrWriter;

    .line 661
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 662
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    .line 663
    .local v0, "dejaVu":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Throwable;>;"
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 665
    invoke-virtual {p1}, Ljava/lang/Throwable$PrintStreamOrWriter;->lock()Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 667
    :try_start_11
    invoke-virtual {p1, p0}, Ljava/lang/Throwable$PrintStreamOrWriter;->println(Ljava/lang/Object;)V

    .line 668
    invoke-direct {p0}, Ljava/lang/Throwable;->getOurStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    move-object v8, v1

    .line 669
    .local v8, "trace":[Ljava/lang/StackTraceElement;
    array-length v1, v8

    const/4 v2, 0x0

    move v3, v2

    :goto_1c
    if-ge v3, v1, :cond_37

    aget-object v4, v8, v3

    .line 670
    .local v4, "traceElement":Ljava/lang/StackTraceElement;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\tat "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/Throwable$PrintStreamOrWriter;->println(Ljava/lang/Object;)V

    .line 669
    .end local v4    # "traceElement":Ljava/lang/StackTraceElement;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 673
    :cond_37
    invoke-virtual {p0}, Ljava/lang/Throwable;->getSuppressed()[Ljava/lang/Throwable;

    move-result-object v9

    array-length v10, v9

    move v11, v2

    :goto_3d
    if-ge v11, v10, :cond_4e

    aget-object v1, v9, v11

    .line 674
    .local v1, "se":Ljava/lang/Throwable;
    const-string v4, "Suppressed: "

    const-string v5, "\t"

    move-object v2, p1

    move-object v3, v8

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Ljava/lang/Throwable;->printEnclosedStackTrace(Ljava/lang/Throwable$PrintStreamOrWriter;[Ljava/lang/StackTraceElement;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 673
    .end local v1    # "se":Ljava/lang/Throwable;
    add-int/lit8 v11, v11, 0x1

    goto :goto_3d

    .line 677
    :cond_4e
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    move-object v9, v1

    .line 678
    .local v9, "ourCause":Ljava/lang/Throwable;
    if-eqz v9, :cond_60

    .line 679
    const-string v4, "Caused by: "

    const-string v5, ""

    move-object v1, v9

    move-object v2, p1

    move-object v3, v8

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Ljava/lang/Throwable;->printEnclosedStackTrace(Ljava/lang/Throwable$PrintStreamOrWriter;[Ljava/lang/StackTraceElement;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 680
    .end local v8    # "trace":[Ljava/lang/StackTraceElement;
    .end local v9    # "ourCause":Ljava/lang/Throwable;
    :cond_60
    monitor-exit v7

    .line 681
    return-void

    .line 680
    :catchall_62
    move-exception v1

    monitor-exit v7
    :try_end_64
    .catchall {:try_start_11 .. :try_end_64} :catchall_62

    throw v1
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 6
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 951
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 952
    iget-object v0, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_45

    .line 953
    const/4 v2, 0x0

    .line 954
    .local v2, "suppressed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 958
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .end local v2    # "suppressed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    .local v0, "suppressed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    goto :goto_43

    .line 960
    .end local v0    # "suppressed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    .restart local v2    # "suppressed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    :cond_14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 961
    .end local v2    # "suppressed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    .restart local v0    # "suppressed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    iget-object v2, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;

    .line 964
    .local v3, "t":Ljava/lang/Throwable;
    if-eqz v3, :cond_3b

    .line 966
    if-eq v3, p0, :cond_33

    .line 968
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 969
    .end local v3    # "t":Ljava/lang/Throwable;
    goto :goto_1f

    .line 967
    .restart local v3    # "t":Ljava/lang/Throwable;
    :cond_33
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Self-suppression not permitted"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 965
    :cond_3b
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Cannot suppress a null exception."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 971
    .end local v3    # "t":Ljava/lang/Throwable;
    :cond_43
    :goto_43
    iput-object v0, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    .line 983
    .end local v0    # "suppressed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    :cond_45
    iget-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    const/4 v2, 0x0

    if-eqz v0, :cond_75

    .line 984
    array-length v3, v0

    if-nez v3, :cond_4e

    goto :goto_79

    .line 987
    :cond_4e
    array-length v0, v0

    if-ne v0, v1, :cond_61

    sget-object v0, Ljava/lang/Throwable$SentinelHolder;->STACK_TRACE_ELEMENT_SENTINEL:Ljava/lang/StackTraceElement;

    iget-object v1, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    aget-object v1, v1, v2

    .line 989
    invoke-virtual {v0, v1}, Ljava/lang/StackTraceElement;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 990
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    goto :goto_79

    .line 992
    :cond_61
    iget-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    array-length v1, v0

    :goto_64
    if-ge v2, v1, :cond_79

    aget-object v3, v0, v2

    .line 993
    .local v3, "ste":Ljava/lang/StackTraceElement;
    if-eqz v3, :cond_6d

    .line 992
    .end local v3    # "ste":Ljava/lang/StackTraceElement;
    add-int/lit8 v2, v2, 0x1

    goto :goto_64

    .line 994
    .restart local v3    # "ste":Ljava/lang/StackTraceElement;
    :cond_6d
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null StackTraceElement in serial stream. "

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1004
    .end local v3    # "ste":Ljava/lang/StackTraceElement;
    :cond_75
    new-array v0, v2, [Ljava/lang/StackTraceElement;

    iput-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    .line 1006
    :cond_79
    :goto_79
    return-void
.end method

.method private declared-synchronized whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1021
    :try_start_1
    invoke-direct {p0}, Ljava/lang/Throwable;->getOurStackTrace()[Ljava/lang/StackTraceElement;

    .line 1023
    iget-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_1c

    move-object v1, v0

    .line 1025
    .local v1, "oldStackTrace":[Ljava/lang/StackTraceElement;
    if-nez v0, :cond_10

    .line 1026
    :try_start_9
    sget-object v0, Ljava/lang/Throwable$SentinelHolder;->STACK_TRACE_SENTINEL:[Ljava/lang/StackTraceElement;

    iput-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_e

    goto :goto_10

    .line 1029
    :catchall_e
    move-exception v0

    goto :goto_19

    .line 1027
    :cond_10
    :goto_10
    :try_start_10
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_18

    .line 1029
    :try_start_13
    iput-object v1, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;
    :try_end_15
    .catchall {:try_start_13 .. :try_end_15} :catchall_1c

    .line 1030
    nop

    .line 1031
    monitor-exit p0

    return-void

    .line 1029
    .end local p0    # "this":Ljava/lang/Throwable;
    :catchall_18
    move-exception v0

    :goto_19
    :try_start_19
    iput-object v1, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    .line 1030
    throw v0
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_1c

    .line 1020
    .end local v1    # "oldStackTrace":[Ljava/lang/StackTraceElement;
    .end local p1    # "s":Ljava/io/ObjectOutputStream;
    :catchall_1c
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final declared-synchronized whitelist test-api addSuppressed(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "exception"    # Ljava/lang/Throwable;

    monitor-enter p0

    .line 1084
    if-eq p1, p0, :cond_28

    .line 1087
    if-eqz p1, :cond_20

    .line 1090
    :try_start_5
    iget-object v0, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_30

    if-nez v0, :cond_b

    .line 1091
    monitor-exit p0

    return-void

    .line 1095
    :cond_b
    :try_start_b
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1096
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    .line 1098
    .end local p0    # "this":Ljava/lang/Throwable;
    :cond_19
    iget-object v0, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1e
    .catchall {:try_start_b .. :try_end_1e} :catchall_30

    .line 1099
    monitor-exit p0

    return-void

    .line 1088
    :cond_20
    :try_start_20
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot suppress a null exception."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1085
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Self-suppression not permitted"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_30
    .catchall {:try_start_20 .. :try_end_30} :catchall_30

    .line 1083
    .end local p1    # "exception":Ljava/lang/Throwable;
    :catchall_30
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist test-api fillInStackTrace()Ljava/lang/Throwable;
    .registers 2

    monitor-enter p0

    .line 795
    :try_start_1
    iget-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    if-nez v0, :cond_9

    iget-object v0, p0, Ljava/lang/Throwable;->backtrace:Ljava/lang/Object;

    if-eqz v0, :cond_13

    .line 799
    .end local p0    # "this":Ljava/lang/Throwable;
    :cond_9
    invoke-static {}, Ljava/lang/Throwable;->nativeFillInStackTrace()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/Throwable;->backtrace:Ljava/lang/Object;

    .line 802
    sget-object v0, Llibcore/util/EmptyArray;->STACK_TRACE_ELEMENT:[Ljava/lang/StackTraceElement;

    iput-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 804
    :cond_13
    monitor-exit p0

    return-object p0

    .line 794
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized whitelist test-api getCause()Ljava/lang/Throwable;
    .registers 2

    monitor-enter p0

    .line 427
    :try_start_1
    iget-object v0, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_8

    if-ne v0, p0, :cond_6

    const/4 v0, 0x0

    :cond_6
    monitor-exit p0

    return-object v0

    .line 427
    .end local p0    # "this":Ljava/lang/Throwable;
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public whitelist test-api getLocalizedMessage()Ljava/lang/String;
    .registers 2

    .line 403
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getMessage()Ljava/lang/String;
    .registers 2

    .line 389
    iget-object v0, p0, Ljava/lang/Throwable;->detailMessage:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getStackTrace()[Ljava/lang/StackTraceElement;
    .registers 2

    .line 837
    invoke-direct {p0}, Ljava/lang/Throwable;->getOurStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/lang/StackTraceElement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/StackTraceElement;

    return-object v0
.end method

.method public final declared-synchronized whitelist test-api getSuppressed()[Ljava/lang/Throwable;
    .registers 3

    monitor-enter p0

    .line 1122
    :try_start_1
    sget-object v0, Ljava/lang/Throwable;->EMPTY_THROWABLE_ARRAY:[Ljava/lang/Throwable;

    if-nez v0, :cond_a

    .line 1123
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Throwable;

    sput-object v0, Ljava/lang/Throwable;->EMPTY_THROWABLE_ARRAY:[Ljava/lang/Throwable;

    .line 1129
    .end local p0    # "this":Ljava/lang/Throwable;
    :cond_a
    iget-object v0, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    if-eqz v0, :cond_21

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_21

    .line 1132
    :cond_15
    iget-object v0, p0, Ljava/lang/Throwable;->suppressedExceptions:Ljava/util/List;

    sget-object v1, Ljava/lang/Throwable;->EMPTY_THROWABLE_ARRAY:[Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Throwable;
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_25

    monitor-exit p0

    return-object v0

    .line 1130
    :cond_21
    :goto_21
    :try_start_21
    sget-object v0, Ljava/lang/Throwable;->EMPTY_THROWABLE_ARRAY:[Ljava/lang/Throwable;
    :try_end_23
    .catchall {:try_start_21 .. :try_end_23} :catchall_25

    monitor-exit p0

    return-object v0

    .line 1121
    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized whitelist test-api initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 5
    .param p1, "cause"    # Ljava/lang/Throwable;

    monitor-enter p0

    .line 467
    :try_start_1
    iget-object v0, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;

    if-ne v0, p0, :cond_13

    .line 470
    if-eq p1, p0, :cond_b

    .line 472
    iput-object p1, p0, Ljava/lang/Throwable;->cause:Ljava/lang/Throwable;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_30

    .line 473
    monitor-exit p0

    return-object p0

    .line 471
    .end local p0    # "this":Ljava/lang/Throwable;
    :cond_b
    :try_start_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Self-causation not permitted"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 468
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t overwrite cause with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "a null"

    .line 469
    invoke-static {p1, v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_30
    .catchall {:try_start_b .. :try_end_30} :catchall_30

    .line 466
    .end local p1    # "cause":Ljava/lang/Throwable;
    :catchall_30
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public whitelist test-api printStackTrace()V
    .registers 2

    .line 646
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 647
    return-void
.end method

.method public whitelist test-api printStackTrace(Ljava/io/PrintStream;)V
    .registers 3
    .param p1, "s"    # Ljava/io/PrintStream;

    .line 655
    new-instance v0, Ljava/lang/Throwable$WrappedPrintStream;

    invoke-direct {v0, p1}, Ljava/lang/Throwable$WrappedPrintStream;-><init>(Ljava/io/PrintStream;)V

    invoke-direct {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/lang/Throwable$PrintStreamOrWriter;)V

    .line 656
    return-void
.end method

.method public whitelist test-api printStackTrace(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "s"    # Ljava/io/PrintWriter;

    .line 735
    new-instance v0, Ljava/lang/Throwable$WrappedPrintWriter;

    invoke-direct {v0, p1}, Ljava/lang/Throwable$WrappedPrintWriter;-><init>(Ljava/io/PrintWriter;)V

    invoke-direct {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/lang/Throwable$PrintStreamOrWriter;)V

    .line 736
    return-void
.end method

.method public whitelist test-api setStackTrace([Ljava/lang/StackTraceElement;)V
    .registers 7
    .param p1, "stackTrace"    # [Ljava/lang/StackTraceElement;

    .line 896
    invoke-virtual {p1}, [Ljava/lang/StackTraceElement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/StackTraceElement;

    .line 897
    .local v0, "defensiveCopy":[Ljava/lang/StackTraceElement;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_2d

    .line 898
    aget-object v2, v0, v1

    if-eqz v2, :cond_11

    .line 897
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 899
    :cond_11
    new-instance v2, Ljava/lang/NullPointerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stackTrace["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 902
    .end local v1    # "i":I
    :cond_2d
    monitor-enter p0

    .line 903
    :try_start_2e
    iget-object v1, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    if-nez v1, :cond_38

    iget-object v1, p0, Ljava/lang/Throwable;->backtrace:Ljava/lang/Object;

    if-nez v1, :cond_38

    .line 905
    monitor-exit p0

    return-void

    .line 906
    :cond_38
    iput-object v0, p0, Ljava/lang/Throwable;->stackTrace:[Ljava/lang/StackTraceElement;

    .line 907
    monitor-exit p0

    .line 908
    return-void

    .line 907
    :catchall_3c
    move-exception v1

    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_2e .. :try_end_3e} :catchall_3c

    throw v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 491
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 492
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    .line 493
    .local v1, "message":Ljava/lang/String;
    if-eqz v1, :cond_23

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_24

    :cond_23
    move-object v2, v0

    :goto_24
    return-object v2
.end method
