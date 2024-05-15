.class public Ljava/time/zone/IcuZoneRulesProvider;
.super Ljava/time/zone/ZoneRulesProvider;
.source "IcuZoneRulesProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/time/zone/IcuZoneRulesProvider$ZoneRulesCache;
    }
.end annotation


# static fields
.field private static final MAX_TRANSITIONS:I = 0x2710

.field private static final SECONDS_IN_DAY:I = 0x15180


# instance fields
.field private final cache:Llibcore/util/BasicLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llibcore/util/BasicLruCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/time/zone/ZoneRules;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/time/zone/ZoneRulesProvider;-><init>()V

    .line 58
    new-instance v0, Ljava/time/zone/IcuZoneRulesProvider$ZoneRulesCache;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/time/zone/IcuZoneRulesProvider$ZoneRulesCache;-><init>(I)V

    iput-object v0, p0, Ljava/time/zone/IcuZoneRulesProvider;->cache:Llibcore/util/BasicLruCache;

    .line 51
    return-void
.end method

.method static generateZoneRules(Ljava/lang/String;)Ljava/time/zone/ZoneRules;
    .registers 29
    .param p0, "zoneId"    # Ljava/lang/String;

    .prologue
    .line 106
    invoke-static/range {p0 .. p0}, Landroid/icu/util/TimeZone;->getFrozenTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v16

    .line 108
    .local v16, "timeZone":Landroid/icu/util/TimeZone;
    move-object/from16 v0, v16

    instance-of v0, v0, Landroid/icu/impl/OlsonTimeZone;

    move/from16 v23, v0

    .line 109
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Unexpected time zone class "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v16 .. v16}, Landroid/icu/util/TimeZone;->getClass()Ljava/lang/Class;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 108
    move/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Ljava/time/zone/IcuZoneRulesProvider;->verify(ZLjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v22, v16

    .line 110
    check-cast v22, Landroid/icu/impl/OlsonTimeZone;

    .line 111
    .local v22, "tz":Landroid/icu/impl/OlsonTimeZone;
    invoke-virtual/range {v22 .. v22}, Landroid/icu/impl/OlsonTimeZone;->getTimeZoneRules()[Landroid/icu/util/TimeZoneRule;

    move-result-object v14

    .line 113
    .local v14, "rules":[Landroid/icu/util/TimeZoneRule;
    const/16 v23, 0x0

    aget-object v9, v14, v23

    check-cast v9, Landroid/icu/util/InitialTimeZoneRule;

    .line 115
    .local v9, "initial":Landroid/icu/util/InitialTimeZoneRule;
    invoke-virtual {v9}, Landroid/icu/util/InitialTimeZoneRule;->getRawOffset()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/time/zone/IcuZoneRulesProvider;->millisToOffset(I)Ljava/time/ZoneOffset;

    move-result-object v4

    .line 117
    .local v4, "baseStandardOffset":Ljava/time/ZoneOffset;
    invoke-virtual {v9}, Landroid/icu/util/InitialTimeZoneRule;->getRawOffset()I

    move-result v23

    invoke-virtual {v9}, Landroid/icu/util/InitialTimeZoneRule;->getDSTSavings()I

    move-result v24

    add-int v23, v23, v24

    invoke-static/range {v23 .. v23}, Ljava/time/zone/IcuZoneRulesProvider;->millisToOffset(I)Ljava/time/ZoneOffset;

    move-result-object v5

    .line 119
    .local v5, "baseWallOffset":Ljava/time/ZoneOffset;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .local v15, "standardOffsetTransitionList":Ljava/util/List;, "Ljava/util/List<Ljava/time/zone/ZoneOffsetTransition;>;"
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v21, "transitionList":Ljava/util/List;, "Ljava/util/List<Ljava/time/zone/ZoneOffsetTransition;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v12, "lastRules":Ljava/util/List;, "Ljava/util/List<Ljava/time/zone/ZoneOffsetTransitionRule;>;"
    const/4 v13, 0x0

    .line 124
    .local v13, "preLastDstSavings":I
    const/4 v10, 0x0

    .line 125
    .local v10, "last1":Landroid/icu/util/AnnualTimeZoneRule;
    const/4 v11, 0x0

    .line 127
    .local v11, "last2":Landroid/icu/util/AnnualTimeZoneRule;
    const-wide/high16 v24, -0x8000000000000000L

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/impl/OlsonTimeZone;->getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v19

    .line 128
    .local v19, "transition":Landroid/icu/util/TimeZoneTransition;
    const/16 v20, 0x1

    .line 135
    .end local v10    # "last1":Landroid/icu/util/AnnualTimeZoneRule;
    .local v20, "transitionCount":I
    :goto_71
    if-eqz v19, :cond_197

    .line 136
    invoke-virtual/range {v19 .. v19}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v6

    .line 137
    .local v6, "from":Landroid/icu/util/TimeZoneRule;
    invoke-virtual/range {v19 .. v19}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v17

    .line 138
    .local v17, "to":Landroid/icu/util/TimeZoneRule;
    const/4 v8, 0x0

    .line 139
    .local v8, "hadEffect":Z
    invoke-virtual {v6}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v23

    invoke-virtual/range {v17 .. v17}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_b3

    .line 140
    new-instance v23, Ljava/time/zone/ZoneOffsetTransition;

    .line 141
    sget-object v24, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v19 .. v19}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v26

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v24

    .line 142
    invoke-virtual {v6}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/time/zone/IcuZoneRulesProvider;->millisToOffset(I)Ljava/time/ZoneOffset;

    move-result-object v26

    .line 143
    invoke-virtual/range {v17 .. v17}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/time/zone/IcuZoneRulesProvider;->millisToOffset(I)Ljava/time/ZoneOffset;

    move-result-object v27

    .line 140
    invoke-direct/range {v23 .. v27}, Ljava/time/zone/ZoneOffsetTransition;-><init>(JLjava/time/ZoneOffset;Ljava/time/ZoneOffset;)V

    move-object/from16 v0, v23

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    const/4 v8, 0x1

    .line 146
    :cond_b3
    invoke-virtual {v6}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v23

    invoke-virtual {v6}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v24

    add-int v7, v23, v24

    .line 147
    .local v7, "fromTotalOffset":I
    invoke-virtual/range {v17 .. v17}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v23

    invoke-virtual/range {v17 .. v17}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v24

    add-int v18, v23, v24

    .line 148
    .local v18, "toTotalOffset":I
    move/from16 v0, v18

    if-eq v7, v0, :cond_ee

    .line 149
    new-instance v23, Ljava/time/zone/ZoneOffsetTransition;

    .line 150
    sget-object v24, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v19 .. v19}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v26

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v24

    .line 151
    invoke-static {v7}, Ljava/time/zone/IcuZoneRulesProvider;->millisToOffset(I)Ljava/time/ZoneOffset;

    move-result-object v26

    .line 152
    invoke-static/range {v18 .. v18}, Ljava/time/zone/IcuZoneRulesProvider;->millisToOffset(I)Ljava/time/ZoneOffset;

    move-result-object v27

    .line 149
    invoke-direct/range {v23 .. v27}, Ljava/time/zone/ZoneOffsetTransition;-><init>(JLjava/time/ZoneOffset;Ljava/time/ZoneOffset;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    const/4 v8, 0x1

    .line 156
    :cond_ee
    const-string/jumbo v23, "Transition changed neither total nor raw offset."

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-static {v8, v0, v1}, Ljava/time/zone/IcuZoneRulesProvider;->verify(ZLjava/lang/String;Ljava/lang/String;)V

    .line 157
    move-object/from16 v0, v17

    instance-of v0, v0, Landroid/icu/util/AnnualTimeZoneRule;

    move/from16 v23, v0

    if-eqz v23, :cond_1ce

    .line 159
    if-nez v10, :cond_152

    .line 160
    invoke-virtual {v6}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v13

    move-object/from16 v10, v17

    .line 161
    check-cast v10, Landroid/icu/util/AnnualTimeZoneRule;

    .line 163
    .local v10, "last1":Landroid/icu/util/AnnualTimeZoneRule;
    invoke-virtual {v10}, Landroid/icu/util/AnnualTimeZoneRule;->getEndYear()I

    move-result v23

    const v24, 0x7fffffff

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_14f

    const/16 v23, 0x1

    .line 164
    :goto_119
    const-string/jumbo v24, "AnnualTimeZoneRule is not permanent."

    .line 163
    move/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Ljava/time/zone/IcuZoneRulesProvider;->verify(ZLjava/lang/String;Ljava/lang/String;)V

    .line 181
    .end local v10    # "last1":Landroid/icu/util/AnnualTimeZoneRule;
    :goto_125
    const/16 v23, 0x2710

    move/from16 v0, v20

    move/from16 v1, v23

    if-gt v0, v1, :cond_1e3

    const/16 v23, 0x1

    .line 182
    :goto_12f
    const-string/jumbo v24, "More than 10000 transitions."

    .line 181
    move/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Ljava/time/zone/IcuZoneRulesProvider;->verify(ZLjava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-virtual/range {v19 .. v19}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v24

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/impl/OlsonTimeZone;->getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v19

    .line 184
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_71

    .line 163
    .restart local v10    # "last1":Landroid/icu/util/AnnualTimeZoneRule;
    :cond_14f
    const/16 v23, 0x0

    goto :goto_119

    .end local v10    # "last1":Landroid/icu/util/AnnualTimeZoneRule;
    :cond_152
    move-object/from16 v11, v17

    .line 166
    check-cast v11, Landroid/icu/util/AnnualTimeZoneRule;

    .line 168
    .local v11, "last2":Landroid/icu/util/AnnualTimeZoneRule;
    invoke-virtual {v11}, Landroid/icu/util/AnnualTimeZoneRule;->getEndYear()I

    move-result v23

    const v24, 0x7fffffff

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1c8

    const/16 v23, 0x1

    .line 169
    :goto_165
    const-string/jumbo v24, "AnnualTimeZoneRule is not permanent."

    .line 168
    move/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Ljava/time/zone/IcuZoneRulesProvider;->verify(ZLjava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-virtual/range {v19 .. v19}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v24

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/impl/OlsonTimeZone;->getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v19

    .line 173
    invoke-virtual/range {v19 .. v19}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v23

    move-object/from16 v0, v23

    if-ne v0, v10, :cond_1cb

    const/16 v23, 0x1

    .line 174
    :goto_18b
    const-string/jumbo v24, "Unexpected rule after 2 AnnualTimeZoneRules."

    .line 173
    move/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Ljava/time/zone/IcuZoneRulesProvider;->verify(ZLjava/lang/String;Ljava/lang/String;)V

    .line 186
    .end local v6    # "from":Landroid/icu/util/TimeZoneRule;
    .end local v7    # "fromTotalOffset":I
    .end local v8    # "hadEffect":Z
    .end local v11    # "last2":Landroid/icu/util/AnnualTimeZoneRule;
    .end local v17    # "to":Landroid/icu/util/TimeZoneRule;
    .end local v18    # "toTotalOffset":I
    :cond_197
    if-eqz v10, :cond_1c1

    .line 188
    if-eqz v11, :cond_1e7

    const/16 v23, 0x1

    :goto_19d
    const-string/jumbo v24, "Only one AnnualTimeZoneRule."

    move/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Ljava/time/zone/IcuZoneRulesProvider;->verify(ZLjava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-static {v10, v13}, Ljava/time/zone/IcuZoneRulesProvider;->toZoneOffsetTransitionRule(Landroid/icu/util/AnnualTimeZoneRule;I)Ljava/time/zone/ZoneOffsetTransitionRule;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    invoke-virtual {v10}, Landroid/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v23

    move/from16 v0, v23

    invoke-static {v11, v0}, Ljava/time/zone/IcuZoneRulesProvider;->toZoneOffsetTransitionRule(Landroid/icu/util/AnnualTimeZoneRule;I)Ljava/time/zone/ZoneOffsetTransitionRule;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    :cond_1c1
    move-object/from16 v0, v21

    invoke-static {v4, v5, v15, v0, v12}, Ljava/time/zone/ZoneRules;->of(Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/time/zone/ZoneRules;

    move-result-object v23

    return-object v23

    .line 168
    .restart local v6    # "from":Landroid/icu/util/TimeZoneRule;
    .restart local v7    # "fromTotalOffset":I
    .restart local v8    # "hadEffect":Z
    .restart local v11    # "last2":Landroid/icu/util/AnnualTimeZoneRule;
    .restart local v17    # "to":Landroid/icu/util/TimeZoneRule;
    .restart local v18    # "toTotalOffset":I
    :cond_1c8
    const/16 v23, 0x0

    goto :goto_165

    .line 173
    :cond_1cb
    const/16 v23, 0x0

    goto :goto_18b

    .line 179
    .local v11, "last2":Landroid/icu/util/AnnualTimeZoneRule;
    :cond_1ce
    if-nez v10, :cond_1e0

    const/16 v23, 0x1

    :goto_1d2
    const-string/jumbo v24, "Unexpected rule after AnnualTimeZoneRule."

    move/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Ljava/time/zone/IcuZoneRulesProvider;->verify(ZLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_125

    :cond_1e0
    const/16 v23, 0x0

    goto :goto_1d2

    .line 181
    :cond_1e3
    const/16 v23, 0x0

    goto/16 :goto_12f

    .line 188
    .end local v6    # "from":Landroid/icu/util/TimeZoneRule;
    .end local v7    # "fromTotalOffset":I
    .end local v8    # "hadEffect":Z
    .end local v11    # "last2":Landroid/icu/util/AnnualTimeZoneRule;
    .end local v17    # "to":Landroid/icu/util/TimeZoneRule;
    .end local v18    # "toTotalOffset":I
    :cond_1e7
    const/16 v23, 0x0

    goto :goto_19d
.end method

.method private static millisToOffset(I)Ljava/time/ZoneOffset;
    .registers 5
    .param p0, "offset"    # I

    .prologue
    .line 293
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v2, p0

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v0

    return-object v0
.end method

.method private static toZoneOffsetTransitionRule(Landroid/icu/util/AnnualTimeZoneRule;I)Ljava/time/zone/ZoneOffsetTransitionRule;
    .registers 16
    .param p0, "rule"    # Landroid/icu/util/AnnualTimeZoneRule;
    .param p1, "dstSavingMillisBefore"    # I

    .prologue
    .line 227
    invoke-virtual {p0}, Landroid/icu/util/AnnualTimeZoneRule;->getRule()Landroid/icu/util/DateTimeRule;

    move-result-object v9

    .line 229
    .local v9, "dateTimeRule":Landroid/icu/util/DateTimeRule;
    sget-object v11, Ljava/time/Month;->JANUARY:Ljava/time/Month;

    invoke-virtual {v9}, Landroid/icu/util/DateTimeRule;->getRuleMonth()I

    move-result v12

    int-to-long v12, v12

    invoke-virtual {v11, v12, v13}, Ljava/time/Month;->plus(J)Ljava/time/Month;

    move-result-object v0

    .line 232
    .local v0, "month":Ljava/time/Month;
    sget-object v11, Ljava/time/DayOfWeek;->SATURDAY:Ljava/time/DayOfWeek;

    invoke-virtual {v9}, Landroid/icu/util/DateTimeRule;->getRuleDayOfWeek()I

    move-result v12

    int-to-long v12, v12

    invoke-virtual {v11, v12, v13}, Ljava/time/DayOfWeek;->plus(J)Ljava/time/DayOfWeek;

    move-result-object v2

    .line 233
    .local v2, "dayOfWeek":Ljava/time/DayOfWeek;
    invoke-virtual {v9}, Landroid/icu/util/DateTimeRule;->getDateRuleType()I

    move-result v11

    packed-switch v11, :pswitch_data_ca

    .line 253
    new-instance v11, Ljava/time/zone/ZoneRulesException;

    .line 254
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Unexpected date rule type: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v9}, Landroid/icu/util/DateTimeRule;->getDateRuleType()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 253
    invoke-direct {v11, v12}, Ljava/time/zone/ZoneRulesException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 236
    :pswitch_3f
    invoke-virtual {v9}, Landroid/icu/util/DateTimeRule;->getRuleDayOfMonth()I

    move-result v1

    .line 237
    .local v1, "dayOfMonthIndicator":I
    const/4 v2, 0x0

    .line 257
    .end local v2    # "dayOfWeek":Ljava/time/DayOfWeek;
    :goto_44
    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9}, Landroid/icu/util/DateTimeRule;->getRuleMillisInDay()I

    move-result v12

    int-to-long v12, v12

    invoke-virtual {v11, v12, v13}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v12

    long-to-int v10, v12

    .line 260
    .local v10, "secondOfDay":I
    const v11, 0x15180

    if-ne v10, v11, :cond_98

    .line 261
    sget-object v3, Ljava/time/LocalTime;->MIDNIGHT:Ljava/time/LocalTime;

    .line 262
    .local v3, "time":Ljava/time/LocalTime;
    const/4 v4, 0x1

    .line 268
    .local v4, "timeEndOfDay":Z
    :goto_58
    invoke-virtual {v9}, Landroid/icu/util/DateTimeRule;->getTimeRuleType()I

    move-result v11

    packed-switch v11, :pswitch_data_d6

    .line 279
    new-instance v11, Ljava/time/zone/ZoneRulesException;

    .line 280
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Unexpected time rule type "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v9}, Landroid/icu/util/DateTimeRule;->getTimeRuleType()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 279
    invoke-direct {v11, v12}, Ljava/time/zone/ZoneRulesException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 241
    .end local v1    # "dayOfMonthIndicator":I
    .end local v3    # "time":Ljava/time/LocalTime;
    .end local v4    # "timeEndOfDay":Z
    .end local v10    # "secondOfDay":I
    .restart local v2    # "dayOfWeek":Ljava/time/DayOfWeek;
    :pswitch_7d
    invoke-virtual {v9}, Landroid/icu/util/DateTimeRule;->getRuleDayOfMonth()I

    move-result v1

    .restart local v1    # "dayOfMonthIndicator":I
    goto :goto_44

    .line 247
    .end local v1    # "dayOfMonthIndicator":I
    :pswitch_82
    invoke-virtual {v0}, Ljava/time/Month;->maxLength()I

    move-result v11

    neg-int v11, v11

    invoke-virtual {v9}, Landroid/icu/util/DateTimeRule;->getRuleDayOfMonth()I

    move-result v12

    add-int/2addr v11, v12

    add-int/lit8 v1, v11, -0x1

    .line 248
    .restart local v1    # "dayOfMonthIndicator":I
    goto :goto_44

    .line 251
    .end local v1    # "dayOfMonthIndicator":I
    :pswitch_8f
    new-instance v11, Ljava/time/zone/ZoneRulesException;

    const-string/jumbo v12, "Date rule type DOW is unsupported"

    invoke-direct {v11, v12}, Ljava/time/zone/ZoneRulesException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 264
    .end local v2    # "dayOfWeek":Ljava/time/DayOfWeek;
    .restart local v1    # "dayOfMonthIndicator":I
    .restart local v10    # "secondOfDay":I
    :cond_98
    int-to-long v12, v10

    invoke-static {v12, v13}, Ljava/time/LocalTime;->ofSecondOfDay(J)Ljava/time/LocalTime;

    move-result-object v3

    .line 265
    .restart local v3    # "time":Ljava/time/LocalTime;
    const/4 v4, 0x0

    .restart local v4    # "timeEndOfDay":Z
    goto :goto_58

    .line 270
    :pswitch_9f
    sget-object v5, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->WALL:Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    .line 282
    .local v5, "timeDefinition":Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;
    :goto_a1
    invoke-virtual {p0}, Landroid/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v11

    invoke-static {v11}, Ljava/time/zone/IcuZoneRulesProvider;->millisToOffset(I)Ljava/time/ZoneOffset;

    move-result-object v6

    .line 283
    .local v6, "standardOffset":Ljava/time/ZoneOffset;
    invoke-virtual {p0}, Landroid/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v11

    add-int/2addr v11, p1

    invoke-static {v11}, Ljava/time/zone/IcuZoneRulesProvider;->millisToOffset(I)Ljava/time/ZoneOffset;

    move-result-object v7

    .line 285
    .local v7, "offsetBefore":Ljava/time/ZoneOffset;
    invoke-virtual {p0}, Landroid/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v11

    invoke-virtual {p0}, Landroid/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v12

    add-int/2addr v11, v12

    .line 284
    invoke-static {v11}, Ljava/time/zone/IcuZoneRulesProvider;->millisToOffset(I)Ljava/time/ZoneOffset;

    move-result-object v8

    .line 286
    .local v8, "offsetAfter":Ljava/time/ZoneOffset;
    invoke-static/range {v0 .. v8}, Ljava/time/zone/ZoneOffsetTransitionRule;->of(Ljava/time/Month;ILjava/time/DayOfWeek;Ljava/time/LocalTime;ZLjava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;)Ljava/time/zone/ZoneOffsetTransitionRule;

    move-result-object v11

    return-object v11

    .line 273
    .end local v5    # "timeDefinition":Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;
    .end local v6    # "standardOffset":Ljava/time/ZoneOffset;
    .end local v7    # "offsetBefore":Ljava/time/ZoneOffset;
    .end local v8    # "offsetAfter":Ljava/time/ZoneOffset;
    :pswitch_c4
    sget-object v5, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->STANDARD:Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    .restart local v5    # "timeDefinition":Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;
    goto :goto_a1

    .line 276
    .end local v5    # "timeDefinition":Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;
    :pswitch_c7
    sget-object v5, Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->UTC:Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    .restart local v5    # "timeDefinition":Ljava/time/zone/ZoneOffsetTransitionRule$TimeDefinition;
    goto :goto_a1

    .line 233
    :pswitch_data_ca
    .packed-switch 0x0
        :pswitch_3f
        :pswitch_8f
        :pswitch_7d
        :pswitch_82
    .end packed-switch

    .line 268
    :pswitch_data_d6
    .packed-switch 0x0
        :pswitch_9f
        :pswitch_c4
        :pswitch_c7
    .end packed-switch
.end method

.method private static verify(ZLjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p0, "check"    # Z
    .param p1, "zoneId"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 210
    if-nez p0, :cond_18

    .line 211
    new-instance v0, Ljava/time/zone/ZoneRulesException;

    .line 212
    const-string/jumbo v1, "Failed verification of zone %s: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 211
    invoke-direct {v0, v1}, Ljava/time/zone/ZoneRulesException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_18
    return-void
.end method


# virtual methods
.method protected provideRules(Ljava/lang/String;Z)Ljava/time/zone/ZoneRules;
    .registers 4
    .param p1, "zoneId"    # Ljava/lang/String;
    .param p2, "forCaching"    # Z

    .prologue
    .line 74
    iget-object v0, p0, Ljava/time/zone/IcuZoneRulesProvider;->cache:Llibcore/util/BasicLruCache;

    invoke-virtual {v0, p1}, Llibcore/util/BasicLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/zone/ZoneRules;

    return-object v0
.end method

.method protected provideVersions(Ljava/lang/String;)Ljava/util/NavigableMap;
    .registers 5
    .param p1, "zoneId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/NavigableMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/time/zone/ZoneRules;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    new-instance v0, Ljava/util/TreeMap;

    .line 80
    invoke-static {}, Landroid/icu/util/TimeZone;->getTZDataVersion()Ljava/lang/String;

    move-result-object v1

    .line 81
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Ljava/time/zone/IcuZoneRulesProvider;->provideRules(Ljava/lang/String;Z)Ljava/time/zone/ZoneRules;

    move-result-object v2

    .line 80
    invoke-static {v1, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    .line 79
    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method protected provideZoneIds()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 62
    sget-object v2, Landroid/icu/util/TimeZone$SystemTimeZoneType;->ANY:Landroid/icu/util/TimeZone$SystemTimeZoneType;

    invoke-static {v2, v3, v3}, Landroid/icu/impl/ZoneMeta;->getAvailableIDs(Landroid/icu/util/TimeZone$SystemTimeZoneType;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/Set;

    move-result-object v0

    .line 63
    .local v0, "zoneIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 66
    .end local v0    # "zoneIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v1, "zoneIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v2, "GMT+0"

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 67
    const-string/jumbo v2, "GMT-0"

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 68
    return-object v1
.end method
