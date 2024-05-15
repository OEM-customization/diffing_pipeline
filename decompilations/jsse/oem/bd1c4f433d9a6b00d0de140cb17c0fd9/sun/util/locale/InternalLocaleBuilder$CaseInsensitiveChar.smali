.class final Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;
.super Ljava/lang/Object;
.source "InternalLocaleBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/util/locale/InternalLocaleBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CaseInsensitiveChar"
.end annotation


# instance fields
.field private final ch:C

.field private final lowerCh:C


# direct methods
.method constructor <init>(C)V
    .registers 3
    .param p1, "c"    # C

    .prologue
    .line 709
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 710
    iput-char p1, p0, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;->ch:C

    .line 711
    iget-char v0, p0, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;->ch:C

    invoke-static {v0}, Lsun/util/locale/LocaleUtils;->toLower(C)C

    move-result v0

    iput-char v0, p0, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;->lowerCh:C

    .line 712
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 706
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-direct {p0, v0}, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;-><init>(C)V

    .line 707
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "-this1"    # Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;

    .prologue
    invoke-direct {p0, p1}, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 725
    if-ne p0, p1, :cond_5

    .line 726
    return v0

    .line 728
    :cond_5
    instance-of v2, p1, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;

    if-nez v2, :cond_a

    .line 729
    return v1

    .line 731
    :cond_a
    iget-char v2, p0, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;->lowerCh:C

    check-cast p1, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-char v3, p1, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;->lowerCh:C

    if-ne v2, v3, :cond_13

    :goto_12
    return v0

    :cond_13
    move v0, v1

    goto :goto_12
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 720
    iget-char v0, p0, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;->lowerCh:C

    return v0
.end method

.method public value()C
    .registers 2

    .prologue
    .line 715
    iget-char v0, p0, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;->ch:C

    return v0
.end method
