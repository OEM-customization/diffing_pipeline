.class public Lsun/misc/REException;
.super Ljava/lang/Exception;
.source "REException.java"


# static fields
.field private static final serialVersionUID:J = 0x409f834525bf2073L


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 39
    return-void
.end method
