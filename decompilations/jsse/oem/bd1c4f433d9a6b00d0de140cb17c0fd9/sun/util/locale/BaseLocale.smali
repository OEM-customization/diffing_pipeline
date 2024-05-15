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
.field private static final CACHE:Lsun/util/locale/BaseLocale$Cache;

.field public static final SEP:Ljava/lang/String; = "_"


# instance fields
.field private volatile hash:I

.field private final language:Ljava/lang/String;

.field private final region:Ljava/lang/String;

.field private final script:Ljava/lang/String;

.field private final variant:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    new-instance v0, Lsun/util/locale/BaseLocale$Cache;

    invoke-direct {v0}, Lsun/util/locale/BaseLocale$Cache;-><init>()V

    sput-object v0, Lsun/util/locale/BaseLocale;->CACHE:Lsun/util/locale/BaseLocale$Cache;

    .line 37
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "region"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lsun/util/locale/BaseLocale;->hash:I

    .line 52
    iput-object p1, p0, Lsun/util/locale/BaseLocale;->language:Ljava/lang/String;

    .line 53
    const-string/jumbo v0, ""

    iput-object v0, p0, Lsun/util/locale/BaseLocale;->script:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lsun/util/locale/BaseLocale;->region:Ljava/lang/String;

    .line 55
    const-string/jumbo v0, ""

    iput-object v0, p0, Lsun/util/locale/BaseLocale;->variant:Ljava/lang/String;

    .line 56
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "script"    # Ljava/lang/String;
    .param p3, "region"    # Ljava/lang/String;
    .param p4, "variant"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lsun/util/locale/BaseLocale;->hash:I

    .line 59
    if-eqz p1, :cond_33

    invoke-static {p1}, Lsun/util/locale/LocaleUtils;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    :goto_10
    iput-object v0, p0, Lsun/util/locale/BaseLocale;->language:Ljava/lang/String;

    .line 60
    if-eqz p2, :cond_37

    invoke-static {p2}, Lsun/util/locale/LocaleUtils;->toTitleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    :goto_1c
    iput-object v0, p0, Lsun/util/locale/BaseLocale;->script:Ljava/lang/String;

    .line 61
    if-eqz p3, :cond_3b

    invoke-static {p3}, Lsun/util/locale/LocaleUtils;->toUpperString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    :goto_28
    iput-object v0, p0, Lsun/util/locale/BaseLocale;->region:Ljava/lang/String;

    .line 62
    if-eqz p4, :cond_3f

    invoke-virtual {p4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    :goto_30
    iput-object v0, p0, Lsun/util/locale/BaseLocale;->variant:Ljava/lang/String;

    .line 63
    return-void

    .line 59
    :cond_33
    const-string/jumbo v0, ""

    goto :goto_10

    .line 60
    :cond_37
    const-string/jumbo v0, ""

    goto :goto_1c

    .line 61
    :cond_3b
    const-string/jumbo v0, ""

    goto :goto_28

    .line 62
    :cond_3f
    const-string/jumbo v0, ""

    goto :goto_30
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsun/util/locale/BaseLocale;)V
    .registers 6
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "script"    # Ljava/lang/String;
    .param p3, "region"    # Ljava/lang/String;
    .param p4, "variant"    # Ljava/lang/String;
    .param p5, "-this4"    # Lsun/util/locale/BaseLocale;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lsun/util/locale/BaseLocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static createInstance(Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/BaseLocale;
    .registers 6
    .param p0, "language"    # Ljava/lang/String;
    .param p1, "region"    # Ljava/lang/String;

    .prologue
    .line 68
    new-instance v0, Lsun/util/locale/BaseLocale;

    invoke-direct {v0, p0, p1}, Lsun/util/locale/BaseLocale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .local v0, "base":Lsun/util/locale/BaseLocale;
    sget-object v1, Lsun/util/locale/BaseLocale;->CACHE:Lsun/util/locale/BaseLocale$Cache;

    new-instance v2, Lsun/util/locale/BaseLocale$Key;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lsun/util/locale/BaseLocale$Key;-><init>(Ljava/lang/String;Ljava/lang/String;Lsun/util/locale/BaseLocale$Key;)V

    invoke-virtual {v1, v2, v0}, Lsun/util/locale/BaseLocale$Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lsun/util/locale/BaseLocale;
    .registers 7
    .param p0, "language"    # Ljava/lang/String;
    .param p1, "script"    # Ljava/lang/String;
    .param p2, "region"    # Ljava/lang/String;
    .param p3, "variant"    # Ljava/lang/String;

    .prologue
    .line 76
    if-eqz p0, :cond_e

    .line 77
    const-string/jumbo v2, "he"

    invoke-static {p0, v2}, Lsun/util/locale/LocaleUtils;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 78
    const-string/jumbo p0, "iw"

    .line 86
    :cond_e
    :goto_e
    new-instance v1, Lsun/util/locale/BaseLocale$Key;

    invoke-direct {v1, p0, p1, p2, p3}, Lsun/util/locale/BaseLocale$Key;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .local v1, "key":Lsun/util/locale/BaseLocale$Key;
    sget-object v2, Lsun/util/locale/BaseLocale;->CACHE:Lsun/util/locale/BaseLocale$Cache;

    invoke-virtual {v2, v1}, Lsun/util/locale/BaseLocale$Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/util/locale/BaseLocale;

    .line 88
    .local v0, "baseLocale":Lsun/util/locale/BaseLocale;
    return-object v0

    .line 79
    .end local v0    # "baseLocale":Lsun/util/locale/BaseLocale;
    .end local v1    # "key":Lsun/util/locale/BaseLocale$Key;
    :cond_1c
    const-string/jumbo v2, "yi"

    invoke-static {p0, v2}, Lsun/util/locale/LocaleUtils;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 80
    const-string/jumbo p0, "ji"

    goto :goto_e

    .line 81
    :cond_29
    const-string/jumbo v2, "id"

    invoke-static {p0, v2}, Lsun/util/locale/LocaleUtils;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 82
    const-string/jumbo p0, "in"

    goto :goto_e
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 109
    if-ne p0, p1, :cond_5

    .line 110
    return v1

    .line 112
    :cond_5
    instance-of v3, p1, Lsun/util/locale/BaseLocale;

    if-nez v3, :cond_a

    .line 113
    return v2

    :cond_a
    move-object v0, p1

    .line 115
    check-cast v0, Lsun/util/locale/BaseLocale;

    .line 116
    .local v0, "other":Lsun/util/locale/BaseLocale;
    iget-object v3, p0, Lsun/util/locale/BaseLocale;->language:Ljava/lang/String;

    iget-object v4, v0, Lsun/util/locale/BaseLocale;->language:Ljava/lang/String;

    if-ne v3, v4, :cond_28

    .line 117
    iget-object v3, p0, Lsun/util/locale/BaseLocale;->script:Ljava/lang/String;

    iget-object v4, v0, Lsun/util/locale/BaseLocale;->script:Ljava/lang/String;

    if-ne v3, v4, :cond_28

    .line 118
    iget-object v3, p0, Lsun/util/locale/BaseLocale;->region:Ljava/lang/String;

    iget-object v4, v0, Lsun/util/locale/BaseLocale;->region:Ljava/lang/String;

    if-ne v3, v4, :cond_28

    .line 119
    iget-object v3, p0, Lsun/util/locale/BaseLocale;->variant:Ljava/lang/String;

    iget-object v4, v0, Lsun/util/locale/BaseLocale;->variant:Ljava/lang/String;

    if-ne v3, v4, :cond_26

    .line 116
    :goto_25
    return v1

    :cond_26
    move v1, v2

    .line 119
    goto :goto_25

    :cond_28
    move v1, v2

    .line 116
    goto :goto_25
.end method

.method public getLanguage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lsun/util/locale/BaseLocale;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lsun/util/locale/BaseLocale;->region:Ljava/lang/String;

    return-object v0
.end method

.method public getScript()Ljava/lang/String;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lsun/util/locale/BaseLocale;->script:Ljava/lang/String;

    return-object v0
.end method

.method public getVariant()Ljava/lang/String;
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lsun/util/locale/BaseLocale;->variant:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 155
    iget v0, p0, Lsun/util/locale/BaseLocale;->hash:I

    .line 156
    .local v0, "h":I
    if-nez v0, :cond_2a

    .line 158
    iget-object v1, p0, Lsun/util/locale/BaseLocale;->language:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 159
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lsun/util/locale/BaseLocale;->script:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 160
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lsun/util/locale/BaseLocale;->region:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 161
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lsun/util/locale/BaseLocale;->variant:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 162
    iput v0, p0, Lsun/util/locale/BaseLocale;->hash:I

    .line 164
    :cond_2a
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lsun/util/locale/BaseLocale;->language:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_18

    .line 126
    const-string/jumbo v1, "language="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    iget-object v1, p0, Lsun/util/locale/BaseLocale;->language:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    :cond_18
    iget-object v1, p0, Lsun/util/locale/BaseLocale;->script:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_37

    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2c

    .line 131
    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    :cond_2c
    const-string/jumbo v1, "script="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    iget-object v1, p0, Lsun/util/locale/BaseLocale;->script:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    :cond_37
    iget-object v1, p0, Lsun/util/locale/BaseLocale;->region:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_56

    .line 137
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_4b

    .line 138
    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    :cond_4b
    const-string/jumbo v1, "region="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    iget-object v1, p0, Lsun/util/locale/BaseLocale;->region:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    :cond_56
    iget-object v1, p0, Lsun/util/locale/BaseLocale;->variant:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_75

    .line 144
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_6a

    .line 145
    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    :cond_6a
    const-string/jumbo v1, "variant="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    iget-object v1, p0, Lsun/util/locale/BaseLocale;->variant:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    :cond_75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
