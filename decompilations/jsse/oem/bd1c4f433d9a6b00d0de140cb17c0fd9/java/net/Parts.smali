.class Ljava/net/Parts;
.super Ljava/lang/Object;
.source "URL.java"


# instance fields
.field path:Ljava/lang/String;

.field query:Ljava/lang/String;

.field ref:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x2f

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 1321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1322
    const/16 v3, 0x23

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1323
    .local v0, "ind":I
    if-gez v0, :cond_5e

    :goto_f
    iput-object v2, p0, Ljava/net/Parts;->ref:Ljava/lang/String;

    .line 1324
    if-gez v0, :cond_65

    .line 1325
    :goto_13
    const/16 v2, 0x3f

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 1326
    .local v1, "q":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_6a

    .line 1327
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/net/Parts;->query:Ljava/lang/String;

    .line 1328
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/net/Parts;->path:Ljava/lang/String;

    .line 1332
    :goto_2a
    iget-object v2, p0, Ljava/net/Parts;->path:Ljava/lang/String;

    if-eqz v2, :cond_5d

    iget-object v2, p0, Ljava/net/Parts;->path:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5d

    iget-object v2, p0, Ljava/net/Parts;->path:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v5, :cond_5d

    .line 1333
    if-eqz p2, :cond_5d

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 1332
    if-eqz v2, :cond_5d

    .line 1334
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/net/Parts;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/net/Parts;->path:Ljava/lang/String;

    .line 1336
    :cond_5d
    return-void

    .line 1323
    .end local v1    # "q":I
    :cond_5e
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_f

    .line 1324
    :cond_65
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_13

    .line 1330
    .restart local v1    # "q":I
    :cond_6a
    iput-object p1, p0, Ljava/net/Parts;->path:Ljava/lang/String;

    goto :goto_2a
.end method


# virtual methods
.method getPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1339
    iget-object v0, p0, Ljava/net/Parts;->path:Ljava/lang/String;

    return-object v0
.end method

.method getQuery()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1343
    iget-object v0, p0, Ljava/net/Parts;->query:Ljava/lang/String;

    return-object v0
.end method

.method getRef()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1347
    iget-object v0, p0, Ljava/net/Parts;->ref:Ljava/lang/String;

    return-object v0
.end method
