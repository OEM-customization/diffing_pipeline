.class public final Lsun/util/locale/BaseLocale;
.super Ljava/lang/Object;
.source "BaseLocale.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/util/locale/BaseLocale$Cache;,
        Lsun/util/locale/BaseLocale$Key;
    }
.end annotation


# static fields
.field private static final greylist-max-o CACHE:Lsun/util/locale/BaseLocale$Cache;

.field public static final blacklist SEP:Ljava/lang/String; = "_"


# instance fields
.field private volatile greylist-max-o hash:I

.field private final greylist-max-o language:Ljava/lang/String;

.field private final greylist-max-o region:Ljava/lang/String;

.field private final greylist-max-o script:Ljava/lang/String;

.field private final greylist-max-o variant:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 41
    new-instance v0, Lsun/util/locale/BaseLocale$Cache;

    invoke-direct {v0}, Lsun/util/locale/BaseLocale$Cache;-><init>()V

    sput-object v0, Lsun/util/locale/BaseLocale;->CACHE:Lsun/util/locale/BaseLocale$Cache;

    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "region"    # Ljava/lang/String;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lsun/util/locale/BaseLocale;->hash:I

    .line 52
    iput-object p1, p0, Lsun/util/locale/BaseLocale;->language:Ljava/lang/String;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lsun/util/locale/BaseLocale;->script:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lsun/util/locale/BaseLocale;->region:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lsun/util/locale/BaseLocale;->variant:Ljava/lang/String;

    .line 56
    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "script"    # Ljava/lang/String;
    .param p3, "region"    # Ljava/lang/String;
    .param p4, "variant"    # Ljava/lang/String;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lsun/util/locale/BaseLocale;->hash:I

    .line 59
    const-string v0, ""

    if-eqz p1, :cond_13

    invoke-static {p1}, Lsun/util/locale/LocaleUtils;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    goto :goto_14

    :cond_13
    move-object v1, v0

    :goto_14
    iput-object v1, p0, Lsun/util/locale/BaseLocale;->language:Ljava/lang/String;

    .line 60
    if-eqz p2, :cond_21

    invoke-static {p2}, Lsun/util/locale/LocaleUtils;->toTitleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    goto :goto_22

    :cond_21
    move-object v1, v0

    :goto_22
    iput-object v1, p0, Lsun/util/locale/BaseLocale;->script:Ljava/lang/String;

    .line 61
    if-eqz p3, :cond_2f

    invoke-static {p3}, Lsun/util/locale/LocaleUtils;->toUpperString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    goto :goto_30

    :cond_2f
    move-object v1, v0

    :goto_30
    iput-object v1, p0, Lsun/util/locale/BaseLocale;->region:Ljava/lang/String;

    .line 62
    if-eqz p4, :cond_38

    invoke-virtual {p4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    :cond_38
    iput-object v0, p0, Lsun/util/locale/BaseLocale;->variant:Ljava/lang/String;

    .line 63
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsun/util/locale/BaseLocale$1;)V
    .registers 6
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Lsun/util/locale/BaseLocale$1;

    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lsun/util/locale/BaseLocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist createInstance(Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/BaseLocale;
    .registers 6
    .param p0, "language"    # Ljava/lang/String;
    .param p1, "region"    # Ljava/lang/String;

    .line 68
    new-instance v0, Lsun/util/locale/BaseLocale;

    invoke-direct {v0, p0, p1}, Lsun/util/locale/BaseLocale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .local v0, "base":Lsun/util/locale/BaseLocale;
    sget-object v1, Lsun/util/locale/BaseLocale;->CACHE:Lsun/util/locale/BaseLocale$Cache;

    new-instance v2, Lsun/util/locale/BaseLocale$Key;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lsun/util/locale/BaseLocale$Key;-><init>(Ljava/lang/String;Ljava/lang/String;Lsun/util/locale/BaseLocale$1;)V

    invoke-virtual {v1, v2, v0}, Lsun/util/locale/BaseLocale$Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/BaseLocale;
    .registers 6
    .param p0, "language"    # Ljava/lang/String;
    .param p1, "script"    # Ljava/lang/String;
    .param p2, "region"    # Ljava/lang/String;
    .param p3, "variant"    # Ljava/lang/String;

    .line 76
    if-eqz p0, :cond_22

    .line 77
    const-string v0, "he"

    invoke-static {p0, v0}, Lsun/util/locale/LocaleUtils;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 78
    const-string p0, "iw"

    goto :goto_22

    .line 79
    :cond_d
    const-string v0, "yi"

    invoke-static {p0, v0}, Lsun/util/locale/LocaleUtils;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 80
    const-string p0, "ji"

    goto :goto_22

    .line 81
    :cond_18
    const-string v0, "id"

    invoke-static {p0, v0}, Lsun/util/locale/LocaleUtils;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 82
    const-string p0, "in"

    .line 86
    :cond_22
    :goto_22
    new-instance v0, Lsun/util/locale/BaseLocale$Key;

    invoke-direct {v0, p0, p1, p2, p3}, Lsun/util/locale/BaseLocale$Key;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .local v0, "key":Lsun/util/locale/BaseLocale$Key;
    sget-object v1, Lsun/util/locale/BaseLocale;->CACHE:Lsun/util/locale/BaseLocale$Cache;

    invoke-virtual {v1, v0}, Lsun/util/locale/BaseLocale$Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/util/locale/BaseLocale;

    .line 88
    .local v1, "baseLocale":Lsun/util/locale/BaseLocale;
    return-object v1
.end method


# virtual methods
.method public whitelist core-platform-api test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 109
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 110
    return v0

    .line 112
    :cond_4
    instance-of v1, p1, Lsun/util/locale/BaseLocale;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 113
    return v2

    .line 115
    :cond_a
    move-object v1, p1

    check-cast v1, Lsun/util/locale/BaseLocale;

    .line 116
    .local v1, "other":Lsun/util/locale/BaseLocale;
    iget-object v3, p0, Lsun/util/locale/BaseLocale;->language:Ljava/lang/String;

    iget-object v4, v1, Lsun/util/locale/BaseLocale;->language:Ljava/lang/String;

    if-ne v3, v4, :cond_26

    iget-object v3, p0, Lsun/util/locale/BaseLocale;->script:Ljava/lang/String;

    iget-object v4, v1, Lsun/util/locale/BaseLocale;->script:Ljava/lang/String;

    if-ne v3, v4, :cond_26

    iget-object v3, p0, Lsun/util/locale/BaseLocale;->region:Ljava/lang/String;

    iget-object v4, v1, Lsun/util/locale/BaseLocale;->region:Ljava/lang/String;

    if-ne v3, v4, :cond_26

    iget-object v3, p0, Lsun/util/locale/BaseLocale;->variant:Ljava/lang/String;

    iget-object v4, v1, Lsun/util/locale/BaseLocale;->variant:Ljava/lang/String;

    if-ne v3, v4, :cond_26

    goto :goto_27

    :cond_26
    move v0, v2

    :goto_27
    return v0
.end method

.method public blacklist getLanguage()Ljava/lang/String;
    .registers 2

    .line 92
    iget-object v0, p0, Lsun/util/locale/BaseLocale;->language:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getRegion()Ljava/lang/String;
    .registers 2

    .line 100
    iget-object v0, p0, Lsun/util/locale/BaseLocale;->region:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getScript()Ljava/lang/String;
    .registers 2

    .line 96
    iget-object v0, p0, Lsun/util/locale/BaseLocale;->script:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getVariant()Ljava/lang/String;
    .registers 2

    .line 104
    iget-object v0, p0, Lsun/util/locale/BaseLocale;->variant:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist core-platform-api test-api hashCode()I
    .registers 4

    .line 155
    iget v0, p0, Lsun/util/locale/BaseLocale;->hash:I

    .line 156
    .local v0, "h":I
    if-nez v0, :cond_28

    .line 158
    iget-object v1, p0, Lsun/util/locale/BaseLocale;->language:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 159
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lsun/util/locale/BaseLocale;->script:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 160
    .end local v0    # "h":I
    .local v1, "h":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lsun/util/locale/BaseLocale;->region:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 161
    .end local v1    # "h":I
    .restart local v0    # "h":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lsun/util/locale/BaseLocale;->variant:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 162
    iput v0, p0, Lsun/util/locale/BaseLocale;->hash:I

    .line 164
    :cond_28
    return v0
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 4

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lsun/util/locale/BaseLocale;->language:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_17

    .line 126
    const-string v1, "language="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    iget-object v1, p0, Lsun/util/locale/BaseLocale;->language:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    :cond_17
    iget-object v1, p0, Lsun/util/locale/BaseLocale;->script:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, ", "

    if-lez v1, :cond_34

    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2a

    .line 131
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    :cond_2a
    const-string v1, "script="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    iget-object v1, p0, Lsun/util/locale/BaseLocale;->script:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    :cond_34
    iget-object v1, p0, Lsun/util/locale/BaseLocale;->region:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4f

    .line 137
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_45

    .line 138
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    :cond_45
    const-string v1, "region="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    iget-object v1, p0, Lsun/util/locale/BaseLocale;->region:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    :cond_4f
    iget-object v1, p0, Lsun/util/locale/BaseLocale;->variant:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6a

    .line 144
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_60

    .line 145
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    :cond_60
    const-string v1, "variant="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    iget-object v1, p0, Lsun/util/locale/BaseLocale;->variant:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    :cond_6a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
