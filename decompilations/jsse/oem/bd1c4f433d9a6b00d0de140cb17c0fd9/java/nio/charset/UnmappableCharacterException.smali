.class public Ljava/nio/charset/UnmappableCharacterException;
.super Ljava/nio/charset/CharacterCodingException;
.source "UnmappableCharacterException.java"


# static fields
.field private static final serialVersionUID:J = -0x6184c90be58a9c8bL


# instance fields
.field private inputLength:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "inputLength"    # I

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/nio/charset/CharacterCodingException;-><init>()V

    .line 51
    iput p1, p0, Ljava/nio/charset/UnmappableCharacterException;->inputLength:I

    .line 52
    return-void
.end method


# virtual methods
.method public getInputLength()I
    .registers 2

    .prologue
    .line 59
    iget v0, p0, Ljava/nio/charset/UnmappableCharacterException;->inputLength:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 3

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Input length = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/nio/charset/UnmappableCharacterException;->inputLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
