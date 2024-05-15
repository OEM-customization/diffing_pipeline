.class Ljava/util/zip/ZStreamRef;
.super Ljava/lang/Object;
.source "ZStreamRef.java"


# instance fields
.field private volatile greylist-max-o address:J


# direct methods
.method constructor greylist-max-o <init>(J)V
    .registers 3
    .param p1, "address"    # J

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-wide p1, p0, Ljava/util/zip/ZStreamRef;->address:J

    .line 37
    return-void
.end method


# virtual methods
.method greylist-max-o address()J
    .registers 3

    .line 40
    iget-wide v0, p0, Ljava/util/zip/ZStreamRef;->address:J

    return-wide v0
.end method

.method greylist-max-o clear()V
    .registers 3

    .line 44
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/util/zip/ZStreamRef;->address:J

    .line 45
    return-void
.end method
