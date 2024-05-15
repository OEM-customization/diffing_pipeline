.class public Ljava/util/zip/DataFormatException;
.super Ljava/lang/Exception;
.source "DataFormatException.java"


# static fields
.field private static final serialVersionUID:J = 0x1ecdb85601655eecL


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 51
    return-void
.end method
