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
.field private final greylist-max-o input:Ljava/lang/String;

.field private final greylist-max-o offsets:[I


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/String;[I)V
    .registers 4
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "offsets"    # [I

    .line 1213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1214
    iput-object p1, p0, Ljava/util/regex/Matcher$OffsetBasedMatchResult;->input:Ljava/lang/String;

    .line 1215
    invoke-virtual {p2}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Ljava/util/regex/Matcher$OffsetBasedMatchResult;->offsets:[I

    .line 1216
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api end()I
    .registers 2

    .line 1230
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher$OffsetBasedMatchResult;->end(I)I

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api end(I)I
    .registers 4
    .param p1, "group"    # I

    .line 1235
    iget-object v0, p0, Ljava/util/regex/Matcher$OffsetBasedMatchResult;->offsets:[I

    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public whitelist core-platform-api test-api group()Ljava/lang/String;
    .registers 2

    .line 1240
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher$OffsetBasedMatchResult;->group(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api group(I)Ljava/lang/String;
    .registers 5
    .param p1, "group"    # I

    .line 1245
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher$OffsetBasedMatchResult;->start(I)I

    move-result v0

    .line 1246
    .local v0, "start":I
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher$OffsetBasedMatchResult;->end(I)I

    move-result v1

    .line 1247
    .local v1, "end":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_15

    if-ne v1, v2, :cond_e

    goto :goto_15

    .line 1251
    :cond_e
    iget-object v2, p0, Ljava/util/regex/Matcher$OffsetBasedMatchResult;->input:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1248
    :cond_15
    :goto_15
    const/4 v2, 0x0

    return-object v2
.end method

.method public whitelist core-platform-api test-api groupCount()I
    .registers 2

    .line 1256
    iget-object v0, p0, Ljava/util/regex/Matcher$OffsetBasedMatchResult;->offsets:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public whitelist core-platform-api test-api start()I
    .registers 2

    .line 1220
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher$OffsetBasedMatchResult;->start(I)I

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api start(I)I
    .registers 4
    .param p1, "group"    # I

    .line 1225
    iget-object v0, p0, Ljava/util/regex/Matcher$OffsetBasedMatchResult;->offsets:[I

    mul-int/lit8 v1, p1, 0x2

    aget v0, v0, v1

    return v0
.end method
