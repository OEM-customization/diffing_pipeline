.class public final Lcom/android/okhttp/Challenge;
.super Ljava/lang/Object;
.source "Challenge.java"


# instance fields
.field private final realm:Ljava/lang/String;

.field private final scheme:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "realm"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/android/okhttp/Challenge;->scheme:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/android/okhttp/Challenge;->realm:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 41
    instance-of v0, p1, Lcom/android/okhttp/Challenge;

    if-eqz v0, :cond_1c

    .line 42
    iget-object v1, p0, Lcom/android/okhttp/Challenge;->scheme:Ljava/lang/String;

    move-object v0, p1

    check-cast v0, Lcom/android/okhttp/Challenge;

    iget-object v0, v0, Lcom/android/okhttp/Challenge;->scheme:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/okhttp/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 41
    if-eqz v0, :cond_1c

    .line 43
    iget-object v0, p0, Lcom/android/okhttp/Challenge;->realm:Ljava/lang/String;

    check-cast p1, Lcom/android/okhttp/Challenge;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Lcom/android/okhttp/Challenge;->realm:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/okhttp/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 41
    :goto_1b
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public getRealm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/okhttp/Challenge;->realm:Ljava/lang/String;

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/okhttp/Challenge;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 47
    const/16 v0, 0x1d

    .line 48
    .local v0, "result":I
    iget-object v1, p0, Lcom/android/okhttp/Challenge;->realm:Ljava/lang/String;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/android/okhttp/Challenge;->realm:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_d
    add-int/lit16 v0, v1, 0x383

    .line 49
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/android/okhttp/Challenge;->scheme:Ljava/lang/String;

    if-eqz v3, :cond_1b

    iget-object v2, p0, Lcom/android/okhttp/Challenge;->scheme:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_1b
    add-int v0, v1, v2

    .line 50
    return v0

    :cond_1e
    move v1, v2

    .line 48
    goto :goto_d
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/okhttp/Challenge;->scheme:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " realm=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/okhttp/Challenge;->realm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
