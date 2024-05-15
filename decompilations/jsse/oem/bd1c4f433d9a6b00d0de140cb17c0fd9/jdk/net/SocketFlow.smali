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
.field public static final HIGH_PRIORITY:I = 0x2

.field public static final NORMAL_PRIORITY:I = 0x1

.field private static final UNSET:I = -0x1


# instance fields
.field private bandwidth:J

.field private priority:I

.field private status:Ljdk/net/SocketFlow$Status;


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x1

    iput v0, p0, Ljdk/net/SocketFlow;->priority:I

    .line 55
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ljdk/net/SocketFlow;->bandwidth:J

    .line 57
    sget-object v0, Ljdk/net/SocketFlow$Status;->NO_STATUS:Ljdk/net/SocketFlow$Status;

    iput-object v0, p0, Ljdk/net/SocketFlow;->status:Ljdk/net/SocketFlow$Status;

    .line 59
    return-void
.end method

.method public static create()Ljdk/net/SocketFlow;
    .registers 1

    .prologue
    .line 109
    new-instance v0, Ljdk/net/SocketFlow;

    invoke-direct {v0}, Ljdk/net/SocketFlow;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bandwidth()J
    .registers 3

    .prologue
    .line 155
    iget-wide v0, p0, Ljdk/net/SocketFlow;->bandwidth:J

    return-wide v0
.end method

.method public bandwidth(J)Ljdk/net/SocketFlow;
    .registers 6
    .param p1, "bandwidth"    # J

    .prologue
    .line 134
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_f

    .line 135
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid bandwidth"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_f
    iput-wide p1, p0, Ljdk/net/SocketFlow;->bandwidth:J

    .line 139
    return-object p0
.end method

.method public priority()I
    .registers 2

    .prologue
    .line 146
    iget v0, p0, Ljdk/net/SocketFlow;->priority:I

    return v0
.end method

.method public priority(I)Ljdk/net/SocketFlow;
    .registers 4
    .param p1, "priority"    # I

    .prologue
    .line 120
    const/4 v0, 0x1

    if-eq p1, v0, :cond_f

    const/4 v0, 0x2

    if-eq p1, v0, :cond_f

    .line 121
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid priority"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_f
    iput p1, p0, Ljdk/net/SocketFlow;->priority:I

    .line 124
    return-object p0
.end method

.method public status()Ljdk/net/SocketFlow$Status;
    .registers 2

    .prologue
    .line 163
    iget-object v0, p0, Ljdk/net/SocketFlow;->status:Ljdk/net/SocketFlow$Status;

    return-object v0
.end method
