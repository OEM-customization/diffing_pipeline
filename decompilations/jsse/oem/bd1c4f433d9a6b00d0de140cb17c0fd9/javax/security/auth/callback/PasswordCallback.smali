.class public Ljavax/security/auth/callback/PasswordCallback;
.super Ljava/lang/Object;
.source "PasswordCallback.java"

# interfaces
.implements Ljavax/security/auth/callback/Callback;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1f7780e27139c5e6L


# instance fields
.field private echoOn:Z

.field private inputPassword:[C

.field private prompt:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "prompt"    # Ljava/lang/String;
    .param p2, "echoOn"    # Z

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_11

    .line 72
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 74
    :cond_11
    iput-object p1, p0, Ljavax/security/auth/callback/PasswordCallback;->prompt:Ljava/lang/String;

    .line 75
    iput-boolean p2, p0, Ljavax/security/auth/callback/PasswordCallback;->echoOn:Z

    .line 76
    return-void
.end method


# virtual methods
.method public clearPassword()V
    .registers 4

    .prologue
    .line 137
    iget-object v1, p0, Ljavax/security/auth/callback/PasswordCallback;->inputPassword:[C

    if-eqz v1, :cond_13

    .line 138
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    iget-object v1, p0, Ljavax/security/auth/callback/PasswordCallback;->inputPassword:[C

    array-length v1, v1

    if-ge v0, v1, :cond_13

    .line 139
    iget-object v1, p0, Ljavax/security/auth/callback/PasswordCallback;->inputPassword:[C

    const/16 v2, 0x20

    aput-char v2, v1, v0

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 141
    .end local v0    # "i":I
    :cond_13
    return-void
.end method

.method public getPassword()[C
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 130
    iget-object v1, p0, Ljavax/security/auth/callback/PasswordCallback;->inputPassword:[C

    if-nez v1, :cond_6

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Ljavax/security/auth/callback/PasswordCallback;->inputPassword:[C

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    goto :goto_5
.end method

.method public getPrompt()Ljava/lang/String;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Ljavax/security/auth/callback/PasswordCallback;->prompt:Ljava/lang/String;

    return-object v0
.end method

.method public isEchoOn()Z
    .registers 2

    .prologue
    .line 99
    iget-boolean v0, p0, Ljavax/security/auth/callback/PasswordCallback;->echoOn:Z

    return v0
.end method

.method public setPassword([C)V
    .registers 3
    .param p1, "password"    # [C

    .prologue
    const/4 v0, 0x0

    .line 115
    if-nez p1, :cond_6

    :goto_3
    iput-object v0, p0, Ljavax/security/auth/callback/PasswordCallback;->inputPassword:[C

    .line 116
    return-void

    .line 115
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    goto :goto_3
.end method
