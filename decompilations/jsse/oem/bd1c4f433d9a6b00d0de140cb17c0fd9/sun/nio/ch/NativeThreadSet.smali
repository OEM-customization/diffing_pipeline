.class Lsun/nio/ch/NativeThreadSet;
.super Ljava/lang/Object;
.source "NativeThreadSet.java"


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private elts:[J

.field private used:I

.field private waitingToEmpty:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const-class v0, Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lsun/nio/ch/NativeThreadSet;->-assertionsDisabled:Z

    .line 32
    return-void
.end method

.method constructor <init>(I)V
    .registers 3
    .param p1, "n"    # I

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lsun/nio/ch/NativeThreadSet;->used:I

    .line 39
    new-array v0, p1, [J

    iput-object v0, p0, Lsun/nio/ch/NativeThreadSet;->elts:[J

    .line 40
    return-void
.end method


# virtual methods
.method add()I
    .registers 13

    .prologue
    const-wide/16 v10, 0x0

    .line 46
    invoke-static {}, Lsun/nio/ch/NativeThread;->current()J

    move-result-wide v6

    .line 48
    .local v6, "th":J
    cmp-long v5, v6, v10

    if-nez v5, :cond_c

    .line 49
    const-wide/16 v6, -0x1

    .line 50
    :cond_c
    monitor-enter p0

    .line 51
    const/4 v4, 0x0

    .line 52
    .local v4, "start":I
    :try_start_e
    iget v5, p0, Lsun/nio/ch/NativeThreadSet;->used:I

    iget-object v8, p0, Lsun/nio/ch/NativeThreadSet;->elts:[J

    array-length v8, v8

    if-lt v5, v8, :cond_26

    .line 53
    iget-object v5, p0, Lsun/nio/ch/NativeThreadSet;->elts:[J

    array-length v3, v5

    .line 54
    .local v3, "on":I
    mul-int/lit8 v2, v3, 0x2

    .line 55
    .local v2, "nn":I
    new-array v1, v2, [J

    .line 56
    .local v1, "nelts":[J
    iget-object v5, p0, Lsun/nio/ch/NativeThreadSet;->elts:[J

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v8, v1, v9, v3}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 57
    iput-object v1, p0, Lsun/nio/ch/NativeThreadSet;->elts:[J

    .line 58
    move v4, v3

    .line 60
    .end local v1    # "nelts":[J
    .end local v2    # "nn":I
    .end local v3    # "on":I
    :cond_26
    move v0, v4

    .local v0, "i":I
    :goto_27
    iget-object v5, p0, Lsun/nio/ch/NativeThreadSet;->elts:[J

    array-length v5, v5

    if-ge v0, v5, :cond_43

    .line 61
    iget-object v5, p0, Lsun/nio/ch/NativeThreadSet;->elts:[J

    aget-wide v8, v5, v0

    cmp-long v5, v8, v10

    if-nez v5, :cond_40

    .line 62
    iget-object v5, p0, Lsun/nio/ch/NativeThreadSet;->elts:[J

    aput-wide v6, v5, v0

    .line 63
    iget v5, p0, Lsun/nio/ch/NativeThreadSet;->used:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lsun/nio/ch/NativeThreadSet;->used:I
    :try_end_3e
    .catchall {:try_start_e .. :try_end_3e} :catchall_4d

    monitor-exit p0

    .line 64
    return v0

    .line 60
    :cond_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 67
    :cond_43
    :try_start_43
    sget-boolean v5, Lsun/nio/ch/NativeThreadSet;->-assertionsDisabled:Z

    if-nez v5, :cond_50

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5
    :try_end_4d
    .catchall {:try_start_43 .. :try_end_4d} :catchall_4d

    .line 50
    .end local v0    # "i":I
    :catchall_4d
    move-exception v5

    monitor-exit p0

    throw v5

    .line 68
    .restart local v0    # "i":I
    :cond_50
    const/4 v5, -0x1

    monitor-exit p0

    return v5
.end method

.method remove(I)V
    .registers 6
    .param p1, "i"    # I

    .prologue
    .line 75
    monitor-enter p0

    .line 76
    :try_start_1
    iget-object v0, p0, Lsun/nio/ch/NativeThreadSet;->elts:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v0, p1

    .line 77
    iget v0, p0, Lsun/nio/ch/NativeThreadSet;->used:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lsun/nio/ch/NativeThreadSet;->used:I

    .line 78
    iget v0, p0, Lsun/nio/ch/NativeThreadSet;->used:I

    if-nez v0, :cond_18

    iget-boolean v0, p0, Lsun/nio/ch/NativeThreadSet;->waitingToEmpty:Z

    if-eqz v0, :cond_18

    .line 79
    invoke-virtual {p0}, Lsun/nio/ch/NativeThreadSet;->notifyAll()V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    :cond_18
    monitor-exit p0

    .line 81
    return-void

    .line 75
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized signalAndWait()V
    .registers 11

    .prologue
    monitor-enter p0

    .line 86
    const/4 v2, 0x0

    .line 87
    .local v2, "interrupted":Z
    :goto_2
    :try_start_2
    iget v7, p0, Lsun/nio/ch/NativeThreadSet;->used:I

    if-lez v7, :cond_42

    .line 88
    iget v6, p0, Lsun/nio/ch/NativeThreadSet;->used:I

    .line 89
    .local v6, "u":I
    iget-object v7, p0, Lsun/nio/ch/NativeThreadSet;->elts:[J

    array-length v3, v7

    .line 90
    .local v3, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v3, :cond_28

    .line 91
    iget-object v7, p0, Lsun/nio/ch/NativeThreadSet;->elts:[J

    aget-wide v4, v7, v1

    .line 92
    .local v4, "th":J
    const-wide/16 v8, 0x0

    cmp-long v7, v4, v8

    if-nez v7, :cond_1b

    .line 90
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 94
    :cond_1b
    const-wide/16 v8, -0x1

    cmp-long v7, v4, v8

    if-eqz v7, :cond_24

    .line 95
    invoke-static {v4, v5}, Lsun/nio/ch/NativeThread;->signal(J)V

    .line 96
    :cond_24
    add-int/lit8 v6, v6, -0x1

    if-nez v6, :cond_18

    .line 99
    .end local v4    # "th":J
    :cond_28
    const/4 v7, 0x1

    iput-boolean v7, p0, Lsun/nio/ch/NativeThreadSet;->waitingToEmpty:Z
    :try_end_2b
    .catchall {:try_start_2 .. :try_end_2b} :catchall_34

    .line 101
    const-wide/16 v8, 0x32

    :try_start_2d
    invoke-virtual {p0, v8, v9}, Lsun/nio/ch/NativeThreadSet;->wait(J)V
    :try_end_30
    .catch Ljava/lang/InterruptedException; {:try_start_2d .. :try_end_30} :catch_37
    .catchall {:try_start_2d .. :try_end_30} :catchall_3d

    .line 105
    const/4 v7, 0x0

    :try_start_31
    iput-boolean v7, p0, Lsun/nio/ch/NativeThreadSet;->waitingToEmpty:Z
    :try_end_33
    .catchall {:try_start_31 .. :try_end_33} :catchall_34

    goto :goto_2

    .end local v1    # "i":I
    .end local v3    # "n":I
    .end local v6    # "u":I
    :catchall_34
    move-exception v7

    monitor-exit p0

    throw v7

    .line 102
    .restart local v1    # "i":I
    .restart local v3    # "n":I
    .restart local v6    # "u":I
    :catch_37
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/InterruptedException;
    const/4 v2, 0x1

    .line 105
    const/4 v7, 0x0

    :try_start_3a
    iput-boolean v7, p0, Lsun/nio/ch/NativeThreadSet;->waitingToEmpty:Z

    goto :goto_2

    .line 104
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_3d
    move-exception v7

    .line 105
    const/4 v8, 0x0

    iput-boolean v8, p0, Lsun/nio/ch/NativeThreadSet;->waitingToEmpty:Z

    .line 104
    throw v7

    .line 108
    .end local v1    # "i":I
    .end local v3    # "n":I
    .end local v6    # "u":I
    :cond_42
    if-eqz v2, :cond_4b

    .line 109
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V
    :try_end_4b
    .catchall {:try_start_3a .. :try_end_4b} :catchall_34

    :cond_4b
    monitor-exit p0

    .line 110
    return-void
.end method
