.class public Lsun/misc/CEFormatException;
.super Ljava/io/IOException;
.source "CEFormatException.java"


# static fields
.field static final serialVersionUID:J = -0x631340ed0628070aL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 34
    return-void
.end method
