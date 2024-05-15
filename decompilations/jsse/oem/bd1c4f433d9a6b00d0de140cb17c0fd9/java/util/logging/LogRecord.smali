.class public Ljava/util/logging/LogRecord;
.super Ljava/lang/Object;
.source "LogRecord.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final MIN_SEQUENTIAL_THREAD_ID:I = 0x3fffffff

.field private static final globalSequenceNumber:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final nextThreadId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final serialVersionUID:J = 0x4a8d593df3695196L

.field private static final threadIds:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private level:Ljava/util/logging/Level;

.field private loggerName:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private millis:J

.field private transient needToInferCaller:Z

.field private transient parameters:[Ljava/lang/Object;

.field private transient resourceBundle:Ljava/util/ResourceBundle;

.field private resourceBundleName:Ljava/lang/String;

.field private sequenceNumber:J

.field private sourceClassName:Ljava/lang/String;

.field private sourceMethodName:Ljava/lang/String;

.field private threadID:I

.field private thrown:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 72
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 71
    sput-object v0, Ljava/util/logging/LogRecord;->globalSequenceNumber:Ljava/util/concurrent/atomic/AtomicLong;

    .line 85
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const v1, 0x3fffffff    # 1.9999999f

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 84
    sput-object v0, Ljava/util/logging/LogRecord;->nextThreadId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 87
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Ljava/util/logging/LogRecord;->threadIds:Ljava/lang/ThreadLocal;

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/util/logging/Level;Ljava/lang/String;)V
    .registers 5
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    invoke-virtual {p1}, Ljava/util/logging/Level;->getClass()Ljava/lang/Class;

    .line 179
    iput-object p1, p0, Ljava/util/logging/LogRecord;->level:Ljava/util/logging/Level;

    .line 180
    iput-object p2, p0, Ljava/util/logging/LogRecord;->message:Ljava/lang/String;

    .line 182
    sget-object v0, Ljava/util/logging/LogRecord;->globalSequenceNumber:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/logging/LogRecord;->sequenceNumber:J

    .line 183
    invoke-direct {p0}, Ljava/util/logging/LogRecord;->defaultThreadID()I

    move-result v0

    iput v0, p0, Ljava/util/logging/LogRecord;->threadID:I

    .line 184
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/logging/LogRecord;->millis:J

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/logging/LogRecord;->needToInferCaller:Z

    .line 186
    return-void
.end method

.method private defaultThreadID()I
    .registers 7

    .prologue
    .line 147
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    .line 148
    .local v2, "tid":J
    const-wide/32 v4, 0x3fffffff

    cmp-long v1, v2, v4

    if-gez v1, :cond_11

    .line 149
    long-to-int v1, v2

    return v1

    .line 151
    :cond_11
    sget-object v1, Ljava/util/logging/LogRecord;->threadIds:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 152
    .local v0, "id":Ljava/lang/Integer;
    if-nez v0, :cond_2a

    .line 153
    sget-object v1, Ljava/util/logging/LogRecord;->nextThreadId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 154
    sget-object v1, Ljava/util/logging/LogRecord;->threadIds:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 156
    :cond_2a
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method private inferCaller()V
    .registers 9

    .prologue
    .line 547
    const/4 v7, 0x0

    iput-boolean v7, p0, Ljava/util/logging/LogRecord;->needToInferCaller:Z

    .line 549
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-static {v7}, Ldalvik/system/VMStack;->getThreadStackTrace(Ljava/lang/Thread;)[Ljava/lang/StackTraceElement;

    move-result-object v6

    .line 550
    .local v6, "stack":[Ljava/lang/StackTraceElement;
    array-length v1, v6

    .line 552
    .local v1, "depth":I
    const/4 v5, 0x1

    .line 553
    .local v5, "lookingForLogger":Z
    const/4 v4, 0x0

    .local v4, "ix":I
    :goto_e
    if-ge v4, v1, :cond_43

    .line 558
    aget-object v2, v6, v4

    .line 559
    .local v2, "frame":Ljava/lang/StackTraceElement;
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 560
    .local v0, "cname":Ljava/lang/String;
    invoke-direct {p0, v0}, Ljava/util/logging/LogRecord;->isLoggerImplFrame(Ljava/lang/String;)Z

    move-result v3

    .line 561
    .local v3, "isLoggerImpl":Z
    if-eqz v5, :cond_22

    .line 563
    if-eqz v3, :cond_1f

    .line 564
    const/4 v5, 0x0

    .line 553
    :cond_1f
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 567
    :cond_22
    if-nez v3, :cond_1f

    .line 569
    const-string/jumbo v7, "java.lang.reflect."

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1f

    const-string/jumbo v7, "sun.reflect."

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_1f

    .line 571
    invoke-virtual {p0, v0}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 572
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 573
    return-void

    .line 580
    .end local v0    # "cname":Ljava/lang/String;
    .end local v2    # "frame":Ljava/lang/StackTraceElement;
    .end local v3    # "isLoggerImpl":Z
    :cond_43
    return-void
.end method

.method private isLoggerImplFrame(Ljava/lang/String;)Z
    .registers 3
    .param p1, "cname"    # Ljava/lang/String;

    .prologue
    .line 584
    const-string/jumbo v0, "java.util.logging.Logger"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 585
    const-string/jumbo v0, "java.util.logging.LoggingProxyImpl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 584
    if-nez v0, :cond_1a

    .line 586
    const-string/jumbo v0, "sun.util.logging."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 584
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x1

    goto :goto_19
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 14
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v9, -0x1

    const/4 v11, 0x0

    .line 495
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 498
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readByte()B

    move-result v5

    .line 499
    .local v5, "major":B
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readByte()B

    move-result v6

    .line 500
    .local v6, "minor":B
    const/4 v8, 0x1

    if-eq v5, v8, :cond_35

    .line 501
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "LogRecord: bad version: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 503
    :cond_35
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v4

    .line 504
    .local v4, "len":I
    if-ge v4, v9, :cond_41

    .line 505
    new-instance v8, Ljava/lang/NegativeArraySizeException;

    invoke-direct {v8}, Ljava/lang/NegativeArraySizeException;-><init>()V

    throw v8

    .line 506
    :cond_41
    if-ne v4, v9, :cond_5d

    .line 507
    iput-object v11, p0, Ljava/util/logging/LogRecord;->parameters:[Ljava/lang/Object;

    .line 521
    :cond_45
    :goto_45
    iget-object v8, p0, Ljava/util/logging/LogRecord;->resourceBundleName:Ljava/lang/String;

    if-eqz v8, :cond_59

    .line 526
    :try_start_49
    iget-object v8, p0, Ljava/util/logging/LogRecord;->resourceBundleName:Ljava/lang/String;

    .line 527
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    .line 528
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    .line 526
    invoke-static {v8, v9, v10}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    move-result-object v0

    .line 529
    .local v0, "bundle":Ljava/util/ResourceBundle;
    iput-object v0, p0, Ljava/util/logging/LogRecord;->resourceBundle:Ljava/util/ResourceBundle;
    :try_end_59
    .catch Ljava/util/MissingResourceException; {:try_start_49 .. :try_end_59} :catch_9b

    .line 542
    .end local v0    # "bundle":Ljava/util/ResourceBundle;
    :cond_59
    :goto_59
    const/4 v8, 0x0

    iput-boolean v8, p0, Ljava/util/logging/LogRecord;->needToInferCaller:Z

    .line 543
    return-void

    .line 508
    :cond_5d
    const/16 v8, 0xff

    if-ge v4, v8, :cond_76

    .line 509
    new-array v8, v4, [Ljava/lang/Object;

    iput-object v8, p0, Ljava/util/logging/LogRecord;->parameters:[Ljava/lang/Object;

    .line 510
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_66
    iget-object v8, p0, Ljava/util/logging/LogRecord;->parameters:[Ljava/lang/Object;

    array-length v8, v8

    if-ge v2, v8, :cond_45

    .line 511
    iget-object v8, p0, Ljava/util/logging/LogRecord;->parameters:[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v8, v2

    .line 510
    add-int/lit8 v2, v2, 0x1

    goto :goto_66

    .line 514
    .end local v2    # "i":I
    :cond_76
    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0x400

    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 515
    .local v7, "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_82
    if-ge v2, v4, :cond_8e

    .line 516
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 515
    add-int/lit8 v2, v2, 0x1

    goto :goto_82

    .line 518
    :cond_8e
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v7, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    iput-object v8, p0, Ljava/util/logging/LogRecord;->parameters:[Ljava/lang/Object;

    goto :goto_45

    .line 530
    .end local v2    # "i":I
    .end local v7    # "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :catch_9b
    move-exception v1

    .line 532
    .local v1, "ex":Ljava/util/MissingResourceException;
    :try_start_9c
    iget-object v8, p0, Ljava/util/logging/LogRecord;->resourceBundleName:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    .line 533
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    .line 532
    invoke-static {v8, v9, v10}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    move-result-object v8

    iput-object v8, p0, Ljava/util/logging/LogRecord;->resourceBundle:Ljava/util/ResourceBundle;
    :try_end_b0
    .catch Ljava/util/MissingResourceException; {:try_start_9c .. :try_end_b0} :catch_b1

    goto :goto_59

    .line 534
    :catch_b1
    move-exception v3

    .line 537
    .local v3, "innerE":Ljava/util/MissingResourceException;
    iput-object v11, p0, Ljava/util/logging/LogRecord;->resourceBundle:Ljava/util/ResourceBundle;

    goto :goto_59
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 5
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 472
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 475
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeByte(I)V

    .line 476
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeByte(I)V

    .line 477
    iget-object v1, p0, Ljava/util/logging/LogRecord;->parameters:[Ljava/lang/Object;

    if-nez v1, :cond_15

    .line 478
    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 479
    return-void

    .line 481
    :cond_15
    iget-object v1, p0, Ljava/util/logging/LogRecord;->parameters:[Ljava/lang/Object;

    array-length v1, v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 483
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1c
    iget-object v1, p0, Ljava/util/logging/LogRecord;->parameters:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_39

    .line 484
    iget-object v1, p0, Ljava/util/logging/LogRecord;->parameters:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-nez v1, :cond_2d

    .line 485
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 483
    :goto_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 487
    :cond_2d
    iget-object v1, p0, Ljava/util/logging/LogRecord;->parameters:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_2a

    .line 490
    :cond_39
    return-void
.end method


# virtual methods
.method public getLevel()Ljava/util/logging/Level;
    .registers 2

    .prologue
    .line 254
    iget-object v0, p0, Ljava/util/logging/LogRecord;->level:Ljava/util/logging/Level;

    return-object v0
.end method

.method public getLoggerName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 194
    iget-object v0, p0, Ljava/util/logging/LogRecord;->loggerName:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 368
    iget-object v0, p0, Ljava/util/logging/LogRecord;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getMillis()J
    .registers 3

    .prologue
    .line 425
    iget-wide v0, p0, Ljava/util/logging/LogRecord;->millis:J

    return-wide v0
.end method

.method public getParameters()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 387
    iget-object v0, p0, Ljava/util/logging/LogRecord;->parameters:[Ljava/lang/Object;

    return-object v0
.end method

.method public getResourceBundle()Ljava/util/ResourceBundle;
    .registers 2

    .prologue
    .line 216
    iget-object v0, p0, Ljava/util/logging/LogRecord;->resourceBundle:Ljava/util/ResourceBundle;

    return-object v0
.end method

.method public getResourceBundleName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 237
    iget-object v0, p0, Ljava/util/logging/LogRecord;->resourceBundleName:Ljava/lang/String;

    return-object v0
.end method

.method public getSequenceNumber()J
    .registers 3

    .prologue
    .line 277
    iget-wide v0, p0, Ljava/util/logging/LogRecord;->sequenceNumber:J

    return-wide v0
.end method

.method public getSourceClassName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 306
    iget-boolean v0, p0, Ljava/util/logging/LogRecord;->needToInferCaller:Z

    if-eqz v0, :cond_7

    .line 307
    invoke-direct {p0}, Ljava/util/logging/LogRecord;->inferCaller()V

    .line 309
    :cond_7
    iget-object v0, p0, Ljava/util/logging/LogRecord;->sourceClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceMethodName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 337
    iget-boolean v0, p0, Ljava/util/logging/LogRecord;->needToInferCaller:Z

    if-eqz v0, :cond_7

    .line 338
    invoke-direct {p0}, Ljava/util/logging/LogRecord;->inferCaller()V

    .line 340
    :cond_7
    iget-object v0, p0, Ljava/util/logging/LogRecord;->sourceMethodName:Ljava/lang/String;

    return-object v0
.end method

.method public getThreadID()I
    .registers 2

    .prologue
    .line 408
    iget v0, p0, Ljava/util/logging/LogRecord;->threadID:I

    return v0
.end method

.method public getThrown()Ljava/lang/Throwable;
    .registers 2

    .prologue
    .line 446
    iget-object v0, p0, Ljava/util/logging/LogRecord;->thrown:Ljava/lang/Throwable;

    return-object v0
.end method

.method public setLevel(Ljava/util/logging/Level;)V
    .registers 3
    .param p1, "level"    # Ljava/util/logging/Level;

    .prologue
    .line 262
    if-nez p1, :cond_8

    .line 263
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 265
    :cond_8
    iput-object p1, p0, Ljava/util/logging/LogRecord;->level:Ljava/util/logging/Level;

    .line 266
    return-void
.end method

.method public setLoggerName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 203
    iput-object p1, p0, Ljava/util/logging/LogRecord;->loggerName:Ljava/lang/String;

    .line 204
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 377
    iput-object p1, p0, Ljava/util/logging/LogRecord;->message:Ljava/lang/String;

    .line 378
    return-void
.end method

.method public setMillis(J)V
    .registers 4
    .param p1, "millis"    # J

    .prologue
    .line 434
    iput-wide p1, p0, Ljava/util/logging/LogRecord;->millis:J

    .line 435
    return-void
.end method

.method public setParameters([Ljava/lang/Object;)V
    .registers 2
    .param p1, "parameters"    # [Ljava/lang/Object;

    .prologue
    .line 396
    iput-object p1, p0, Ljava/util/logging/LogRecord;->parameters:[Ljava/lang/Object;

    .line 397
    return-void
.end method

.method public setResourceBundle(Ljava/util/ResourceBundle;)V
    .registers 2
    .param p1, "bundle"    # Ljava/util/ResourceBundle;

    .prologue
    .line 225
    iput-object p1, p0, Ljava/util/logging/LogRecord;->resourceBundle:Ljava/util/ResourceBundle;

    .line 226
    return-void
.end method

.method public setResourceBundleName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 246
    iput-object p1, p0, Ljava/util/logging/LogRecord;->resourceBundleName:Ljava/lang/String;

    .line 247
    return-void
.end method

.method public setSequenceNumber(J)V
    .registers 4
    .param p1, "seq"    # J

    .prologue
    .line 288
    iput-wide p1, p0, Ljava/util/logging/LogRecord;->sequenceNumber:J

    .line 289
    return-void
.end method

.method public setSourceClassName(Ljava/lang/String;)V
    .registers 3
    .param p1, "sourceClassName"    # Ljava/lang/String;

    .prologue
    .line 318
    iput-object p1, p0, Ljava/util/logging/LogRecord;->sourceClassName:Ljava/lang/String;

    .line 319
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/logging/LogRecord;->needToInferCaller:Z

    .line 320
    return-void
.end method

.method public setSourceMethodName(Ljava/lang/String;)V
    .registers 3
    .param p1, "sourceMethodName"    # Ljava/lang/String;

    .prologue
    .line 349
    iput-object p1, p0, Ljava/util/logging/LogRecord;->sourceMethodName:Ljava/lang/String;

    .line 350
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/logging/LogRecord;->needToInferCaller:Z

    .line 351
    return-void
.end method

.method public setThreadID(I)V
    .registers 2
    .param p1, "threadID"    # I

    .prologue
    .line 416
    iput p1, p0, Ljava/util/logging/LogRecord;->threadID:I

    .line 417
    return-void
.end method

.method public setThrown(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "thrown"    # Ljava/lang/Throwable;

    .prologue
    .line 455
    iput-object p1, p0, Ljava/util/logging/LogRecord;->thrown:Ljava/lang/Throwable;

    .line 456
    return-void
.end method
