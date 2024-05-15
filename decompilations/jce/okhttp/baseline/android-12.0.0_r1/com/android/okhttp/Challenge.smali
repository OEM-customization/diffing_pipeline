.class public final Lcom/android/okhttp/Challenge;
.super Ljava/lang/Object;
.source "Challenge.java"


# instance fields
.field private final greylist-max-o realm:Ljava/lang/String;

.field private final greylist-max-o scheme:Ljava/lang/String;


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "realm"    # Ljava/lang/String;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/okhttp/Challenge;->scheme:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/android/okhttp/Challenge;->realm:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 43
    instance-of v0, p1, Lcom/android/okhttp/Challenge;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/okhttp/Challenge;->scheme:Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Lcom/android/okhttp/Challenge;

    iget-object v1, v1, Lcom/android/okhttp/Challenge;->scheme:Ljava/lang/String;

    .line 44
    invoke-static {v0, v1}, Lcom/android/okhttp/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/okhttp/Challenge;->realm:Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Lcom/android/okhttp/Challenge;

    iget-object v1, v1, Lcom/android/okhttp/Challenge;->realm:Ljava/lang/String;

    .line 45
    invoke-static {v0, v1}, Lcom/android/okhttp/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    .line 43
    :goto_21
    return v0
.end method

.method public greylist-max-o getRealm()Ljava/lang/String;
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/android/okhttp/Challenge;->realm:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getScheme()Ljava/lang/String;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/android/okhttp/Challenge;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 49
    const/16 v0, 0x1d

    .line 50
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/okhttp/Challenge;->realm:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_f

    :cond_e
    move v2, v3

    :goto_f
    add-int/2addr v1, v2

    .line 51
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/android/okhttp/Challenge;->scheme:Ljava/lang/String;

    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    :cond_1a
    add-int/2addr v0, v3

    .line 52
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/okhttp/Challenge;->scheme:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " realm=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/okhttp/Challenge;->realm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
