.class public Ljava/util/FormatFlagsConversionMismatchException;
.super Ljava/util/IllegalFormatException;
.source "FormatFlagsConversionMismatchException.java"


# static fields
.field private static final whitelist serialVersionUID:J = 0x123c11eL


# instance fields
.field private greylist-max-o c:C

.field private greylist-max-o f:Ljava/lang/String;


# direct methods
.method public constructor whitelist test-api <init>(Ljava/lang/String;C)V
    .registers 4
    .param p1, "f"    # Ljava/lang/String;
    .param p2, "c"    # C

    .line 56
    invoke-direct {p0}, Ljava/util/IllegalFormatException;-><init>()V

    .line 57
    if-eqz p1, :cond_a

    .line 59
    iput-object p1, p0, Ljava/util/FormatFlagsConversionMismatchException;->f:Ljava/lang/String;

    .line 60
    iput-char p2, p0, Ljava/util/FormatFlagsConversionMismatchException;->c:C

    .line 61
    return-void

    .line 58
    :cond_a
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method


# virtual methods
.method public whitelist test-api getConversion()C
    .registers 2

    .line 78
    iget-char v0, p0, Ljava/util/FormatFlagsConversionMismatchException;->c:C

    return v0
.end method

.method public whitelist test-api getFlags()Ljava/lang/String;
    .registers 2

    .line 69
    iget-object v0, p0, Ljava/util/FormatFlagsConversionMismatchException;->f:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getMessage()Ljava/lang/String;
    .registers 3

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Conversion = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v1, p0, Ljava/util/FormatFlagsConversionMismatchException;->c:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", Flags = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/util/FormatFlagsConversionMismatchException;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
