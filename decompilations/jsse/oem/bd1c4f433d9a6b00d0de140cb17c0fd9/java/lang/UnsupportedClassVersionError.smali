.class public Ljava/lang/UnsupportedClassVersionError;
.super Ljava/lang/ClassFormatError;
.source "UnsupportedClassVersionError.java"


# static fields
.field private static final serialVersionUID:J = -0x62daf8b40fd8519dL


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/ClassFormatError;-><init>()V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Ljava/lang/ClassFormatError;-><init>(Ljava/lang/String;)V

    .line 55
    return-void
.end method
