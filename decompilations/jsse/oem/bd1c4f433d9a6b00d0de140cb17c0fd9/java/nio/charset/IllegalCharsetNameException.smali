.class public Ljava/nio/charset/IllegalCharsetNameException;
.super Ljava/lang/IllegalArgumentException;
.source "IllegalCharsetNameException.java"


# static fields
.field private static final serialVersionUID:J = 0x143a2b975aba792dL


# instance fields
.field private charsetName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "charsetName"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 56
    iput-object p1, p0, Ljava/nio/charset/IllegalCharsetNameException;->charsetName:Ljava/lang/String;

    .line 57
    return-void
.end method


# virtual methods
.method public getCharsetName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Ljava/nio/charset/IllegalCharsetNameException;->charsetName:Ljava/lang/String;

    return-object v0
.end method
