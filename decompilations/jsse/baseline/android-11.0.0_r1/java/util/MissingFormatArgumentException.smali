.class public Ljava/util/MissingFormatArgumentException;
.super Ljava/util/IllegalFormatException;
.source "MissingFormatArgumentException.java"


# static fields
.field private static final whitelist serialVersionUID:J = 0x124d163L


# instance fields
.field private greylist-max-o s:Ljava/lang/String;


# direct methods
.method public constructor whitelist core-platform-api test-api <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 52
    invoke-direct {p0}, Ljava/util/IllegalFormatException;-><init>()V

    .line 53
    if-eqz p1, :cond_8

    .line 55
    iput-object p1, p0, Ljava/util/MissingFormatArgumentException;->s:Ljava/lang/String;

    .line 56
    return-void

    .line 54
    :cond_8
    const/4 v0, 0x0

    throw v0
.end method


# virtual methods
.method public whitelist core-platform-api test-api getFormatSpecifier()Ljava/lang/String;
    .registers 2

    .line 64
    iget-object v0, p0, Ljava/util/MissingFormatArgumentException;->s:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist core-platform-api test-api getMessage()Ljava/lang/String;
    .registers 3

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Format specifier \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljava/util/MissingFormatArgumentException;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
