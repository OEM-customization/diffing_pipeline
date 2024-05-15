.class public Ljava/lang/IllegalMonitorStateException;
.super Ljava/lang/RuntimeException;
.source "IllegalMonitorStateException.java"


# static fields
.field private static final serialVersionUID:J = 0x33885078182ced4dL


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 61
    return-void
.end method
