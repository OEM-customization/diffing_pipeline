.class final Ljava/util/regex/Matcher$OffsetBasedMatchResult;
.super Ljava/lang/Object;
.source "Matcher.java"

# interfaces
.implements Ljava/util/regex/MatchResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/regex/Matcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OffsetBasedMatchResult"
.end annotation


# instance fields
.field private final input:Ljava/lang/String;

.field private final offsets:[I


# direct methods
.method constructor <init>(Ljava/lang/String;[I)V
    .registers 4
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "offsets"    # [I

    .prologue
    .line 1216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1217
    iput-object p1, p0, Ljava/util/regex/Matcher$OffsetBasedMatchResult;->input:Ljava/lang/String;

    .line 1218
    invoke-virtual {p2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Ljava/util/regex/Matcher$OffsetBasedMatchResult;->offsets:[I

    .line 1219
    return-void
.end method


# virtual methods
.method public end()I
    .registers 2

    .prologue
    .line 1233
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher$OffsetBasedMatchResult;->end(I)I

    move-result v0

    return v0
.end method

.method public end(I)I
    .registers 4
    .param p1, "group"    # I

    .prologue
    .line 1238
    iget-object v0, p0, Ljava/util/regex/Matcher$OffsetBasedMatchResult;->offsets:[I

    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public group()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1243
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher$OffsetBasedMatchResult;->group(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public group(I)Ljava/lang/String;
    .registers 5
    .param p1, "group"    # I

    .prologue
    const/4 v2, -0x1

    .line 1248
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher$OffsetBasedMatchResult;->start(I)I

    move-result v1

    .line 1249
    .local v1, "start":I
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher$OffsetBasedMatchResult;->end(I)I

    move-result v0

    .line 1250
    .local v0, "end":I
    if-eq v1, v2, :cond_d

    if-ne v0, v2, :cond_f

    .line 1251
    :cond_d
    const/4 v2, 0x0

    return-object v2

    .line 1254
    :cond_f
    iget-object v2, p0, Ljava/util/regex/Matcher$OffsetBasedMatchResult;->input:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public groupCount()I
    .registers 2

    .prologue
    .line 1259
    iget-object v0, p0, Ljava/util/regex/Matcher$OffsetBasedMatchResult;->offsets:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public start()I
    .registers 2

    .prologue
    .line 1223
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher$OffsetBasedMatchResult;->start(I)I

    move-result v0

    return v0
.end method

.method public start(I)I
    .registers 4
    .param p1, "group"    # I

    .prologue
    .line 1228
    iget-object v0, p0, Ljava/util/regex/Matcher$OffsetBasedMatchResult;->offsets:[I

    mul-int/lit8 v1, p1, 0x2

    aget v0, v0, v1

    return v0
.end method
