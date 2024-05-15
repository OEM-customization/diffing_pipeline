.class public Ljdk/net/SocketFlow;
.super Ljava/lang/Object;
.source "SocketFlow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljdk/net/SocketFlow$Status;
    }
.end annotation


# static fields
.field public static final blacklist HIGH_PRIORITY:I = 0x2

.field public static final blacklist NORMAL_PRIORITY:I = 0x1

.field private static final blacklist UNSET:I = -0x1


# instance fields
.field private blacklist bandwidth:J

.field private blacklist priority:I

.field private blacklist status:Ljdk/net/SocketFlow$Status;


# direct methods
.method private constructor blacklist <init>()V
    .registers 3

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x1

    iput v0, p0, Ljdk/net/SocketFlow;->priority:I

    .line 56
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ljdk/net/SocketFlow;->bandwidth:J

    .line 58
    sget-object v0, Ljdk/net/SocketFlow$Status;->NO_STATUS:Ljdk/net/SocketFlow$Status;

    iput-object v0, p0, Ljdk/net/SocketFlow;->status:Ljdk/net/SocketFlow$Status;

    .line 60
    return-void
.end method

.method public static blacklist create()Ljdk/net/SocketFlow;
    .registers 1

    .line 111
    new-instance v0, Ljdk/net/SocketFlow;

    invoke-direct {v0}, Ljdk/net/SocketFlow;-><init>()V

    return-object v0
.end method


# virtual methods
.method public blacklist bandwidth()J
    .registers 3

    .line 157
    iget-wide v0, p0, Ljdk/net/SocketFlow;->bandwidth:J

    return-wide v0
.end method

.method public blacklist bandwidth(J)Ljdk/net/SocketFlow;
    .registers 5
    .param p1, "bandwidth"    # J

    .line 136
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_9

    .line 139
    iput-wide p1, p0, Ljdk/net/SocketFlow;->bandwidth:J

    .line 141
    return-object p0

    .line 137
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid bandwidth"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist priority()I
    .registers 2

    .line 148
    iget v0, p0, Ljdk/net/SocketFlow;->priority:I

    return v0
.end method

.method public blacklist priority(I)Ljdk/net/SocketFlow;
    .registers 4
    .param p1, "priority"    # I

    .line 122
    const/4 v0, 0x1

    if-eq p1, v0, :cond_f

    const/4 v0, 0x2

    if-ne p1, v0, :cond_7

    goto :goto_f

    .line 123
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid priority"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_f
    :goto_f
    iput p1, p0, Ljdk/net/SocketFlow;->priority:I

    .line 126
    return-object p0
.end method

.method public blacklist status()Ljdk/net/SocketFlow$Status;
    .registers 2

    .line 165
    iget-object v0, p0, Ljdk/net/SocketFlow;->status:Ljdk/net/SocketFlow$Status;

    return-object v0
.end method
