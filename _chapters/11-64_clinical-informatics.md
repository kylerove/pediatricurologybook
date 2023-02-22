---
section: 11
chapter: 64
sort-key: 11-64
title: Clinical Informatics
description: Chapter 64 dives into an increasingly important concept of clinical informatics and how to engage and apply this within pediatric urology.
thumbnail: 11-64_clinical-informatics.png
authors:
  -
    author-id: 4
  -
    author-id: 9
layout: chapter
lang: en
breadcrumbs:
  - 
    title: Home
    permalink: /
  - 
    title: Book
    permalink: /book/
toc: true
js: /assets/js/pages/chapter.js
review-formatting-complete: 2023-01-29 KR
---

## Introduction

Increasingly, there is broad recognition that clinical expertise and information technology expertise do not always overlap, especially as the separate domains have marched down the road of sub-specialization. Have you ever struggled to convey to the help desk what is not working in the electronic medical record (EMR)? Has an EMR \"upgrade\" ever felt like a clinical workflow \"downgrade?\" This is a gap experienced by most healthcare organizations, and more and more organizations are setting up clinical informatics programs to close that gap.
{:.drop-caps}

**A clinical informaticist (sometimes referred to as an informatician), is a clinical provider with specialty knowledge and training in clinical information systems, usually focused on the EMR.** Clinical informatics has expanded in the last decade into a specialty of its own, complete with training and board certification. Some specialties have relied on such specialists for much longer than urology or surgery, including pathology (laboratory systems interfaces) and radiology (PACS interfaces). But as s EMRs advance and more of our workflows are digitized, even surgeons are affected by the aforementioned gap, and it is increasingly imperative to have surgical providers trained in the EMR to be at the table for decisions that affect our practice.

Clinical informatics can also be defined by what it is not: physicians using a computer, physicians who use clinical software (at any level of expertise), or physicians performing data analysis or research. Historically, the young field of clinical informatics has struggled to convey what it is that we do, and stating what we are not is a useful exercise to emphasize the definition. [Figure 1](#figure-1){:.figure-link} demonstrates some of the overlap and functions of clinical informatics with the field of analytics. Similarly, [Figure 2](#figure-2){:.figure-link} shows how overlap between the health care system, clinical care, and information technology and systems leads to different domains of expertise with clinical informatics at the center.

![Figure 1]({{ site.url }}{{ site.baseurl }}/assets/figures/figure-64-1.svg){:.float-start .img-fluid}  
**Figure 1**{:#figure-1}{:.figure-number} Clinical informatics as a domain has some overlap and relationship with analytics (which in many healthcare systems is nacent), but each has unique elements distinct from the other.

**Figure 2**{:#figure-2}{:.figure-number} Overlapping domains in and around clinical care differentiate clinical
![Figure 2]({{ site.url }}{{ site.baseurl }}/assets/figures/figure-64-2.svg){:.float-start .img-fluid}   informatics from domains such as quality improvement and patient safety and the information technology help desk. Clinical informatics sits at the intersection of the three larger domains, clinical care, the healthcare system and information and communications technology.

## Defining EMR---What It Is

There are various terms used to refer to computerized medical records, including the title of this review, electronic medical record (EMR). But what constitutes an EMR? EMRs may consist of a single, large application (e.g., Epic or Cerner or AllScripts) licensed and maintained by a care delivery organization like a hospital or or private clinic, or they can also consist of multiple, separate applications. The term electronic health record (EHR) is occasionally used synonymously with EMR, but it is defined as a separate, discrete concept of a patient-facing portal that allows access to records from multiple health care delivery organizations and unifies the information in a single place. [Table 1](#table-1){:.table-link} provides a comparison of EMR, EHR, and health information exchanges (HIE), which are also becoming increasingly important regionally to aid with efficient and timely electronic, secure information exchange between organizations.

Beyond defining EMR, there are also measures of how advanced the capabilities and integrations are within the EMR, defined by HIMSS.{% cite anon-a --file 11-64 %} By defining these stages, organizations can benchmark their capabilities (features and integrations that impact patient safety, data security, and clinician efficiency/satisfaction) against one another. Each stage definition{% cite anon-a rule2021a maguire2020a kuhn2015a kahn2018a downing2018a rosenbloom2011a --file 11-64 %} includes that stage's capabilities plus all the lower stages. The most advanced stage is HIMSS stage 7. These are shown in [Table 2](#table-2){:.table-link}.

**Table 1**{:#table-1}{:.table-number} Differences between an Electronic Medical Record (EMR) and an Electronic Health Record (EHR) and Health Information Exchange (HIE). EMRs may consist of a single, large application (e.g., Epic or Cerner) owned and maintained by a care delivery organization like a hospital or hospital system or private clinic, or they can also consist of multiple applications. An HIE, in contrast, aids the sharing of information between EMRs using standardized terminologies (e.g., ICD-10 and SNOMED for diagnoses, CPT for procedures, LOINC codes for lab tests, etc). HIEs are increasingly common. Examples of an EHR include Apple Health or Google Health, which can collect and integrate information securely from multiple entities.

| EMR                                                                  | EHR                                                                                  | HIE                                                                                                                                                                                               |
|----------------------------------------------------------------------|--------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Care delivery organization (hospital, hospital system, clinic) owned | Patient or stakeholder owned                                                         | Independent entity with agreements with multiple organizations to automatically share standardized information (e.g., medications, immunizations, notes, discharge summaries, labs, among others) |
| Contains legal medical record for a single organization              | Subset of records pertaining to a single patient spanning multiple organizations     | Facilitates exchange of information with member organizations                                                                                                                                     |
| Single organization                                                  | May span local, regional, and national areas                                         | May span local, regional, and national areas (e.g., CORHIO HIE in state of Colorado)                                                                                                              |
| Integrated or multiple applications                                  | Interactive interface (web portal or mobile application, typically used by patients) | Interactive interface (web portal or mobile application, typically used by providers within member organizations) or may directly integrate/send/receive data into organization EMR               |

**Table 2**{:#table-2}{:.table-number} HIMSS stages of EMR capabilities. Stage 7 is the most advanced and includes all the stated capabilities *plus* all the capabilities and integrations listed for stages 1--6. Each stage includes all the capabilities of that stage and all lower stages.

| HIMSS stage | Capabilities                                                                                                                                                              |
|-------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Stage 7     | Complete EMR; continuity of care document (CCD) transactions to share data; data warehousing; data continuity with emergency department (ED), ambulatory, outpatient (OP) |
| Stage 6     | Physician documentation (structured templates), full clinical decision support systems (CDSS) (variance and compliance), full R-PACS                                      |
| Stage 5     | Closed loop medication administration                                                                                                                                     |
| Stage 4     | Clinical physician order entry (CPOE), clinical decision support (clinical protocols)                                                                                     |
| Stage 3     | Nursing/clinical documentation (flow sheets), CDSS (error checking), PACS available outside radiology                                                                     |
| Stage 2     | Clinical data repository (CDR), controlled medical vocabulary, clinical decision support, may have document imaging; health information exchange (HIE) capable            |
| Stage 1     | All three ancillaries (laboratory IS, radiology IS, pharmacy IS) installed                                                                                                |
| Stage 0     | All three ancillaries (laboratory IS, radiology IS, pharmacy IS) not installed                                                                                            |

## Clinical Informatics Examples

### Documentation Strategies and Standardization

The EMR era has made it increasing simple to store patient information such as notes, labs, radiology results, and more. This has also led to a dramatic lengthening of documentation as EMRs make it very easy to pull this information into a note.{% cite rule2021a maguire2020a kuhn2015a kahn2018a --file 11-64 %} The unintended consequence of this is the tendency for clinicians to include redundant information verbatim (e.g., entire renal bladder ultrasound report) in their clinic and inpatient progress notes instead of summarizing and noting the significance of said result---leading to a doubling of clinic note lengths since 2009.{% cite downing2018a --file 11-64 %}

Clinical informaticists are well positioned to positively impact this by encouraging the use of and creating documentation templates within the EMR. Why is this important? Too often, clinicians repeat mundane tasks over and over, without realizing or understanding that the EMR can automate tasks and work. A great example of this is when patients with common pediatric urology problems are seen in clinic (e.g., hypospadias, hydronephrosis, vesicoureteral reflux, bowel and bladder dysfunction). If you find yourself having the same conversation with patients and families and presenting similar options, a clinical note template can turn 10 minutes "re-creating the wheel" to document said conversation into a 30--60 second exercise of filling out key details in a clinical note template that is saved in the EMR.

[Table 3](#table-3){:.table-link} provides a list of new patient ***shared*** note template outpatient phenotypes at my organization. Note the word ***shared***: Our group has elected to create this shared resource to all providers. The benefit of sharing is that we have standardized the documentation for \~95% of new patients, which fall into this list, and all providers benefit as issues are corrected and the template is refined.

**Table 3**{:#table-3}{:.table-number} List of new patient shared note templates at Children's Hospital Colorado as of 2023.

| New patient templates             |
|-----------------------------------|
| Anorectal                         |
| Differences of sexual development |
| Dysfunctional voiding             |
| Dysuria                           |
| Generic                           |
| Hematuria                         |
| Hernia / hydrocele                |
| Hydronephrosis                    |
| Hypospadias                       |
| Labial adhesions                  |
| Newborn phimosis                  |
| Nocturnal enuresis                |
| Penis                             |
| Prenatal consult                  |
| Scrotal pain / mass / swelling    |
| Spinal defect                     |
| Stones                            |
| Testicular mass / microlithiasis  |
| Undescended testicle              |
| Urachal issue                     |
| UTI                               |
| Varicocele / spermatocele         |
| Vesicoureteral reflux             |

### Creation of Discrete Data

An enormous advantage the EMR holds over paper records lies within structured, or discrete, data. One may think of discrete data as information that has been parsed into its base elements, labeled, and stored such that it can be easily accessed. Within the EMR, much of the data important for clinical documentation has already been captured in this way---dates, names, vital signs, lab values, diagnoses, etc. Such data can facilitate direct patient care and can be leveraged for secondary uses including outcomes tracking and clinical research.

It is generally simple to pull discrete data into notes. When doing so, physicians must be mindful to avoid note bloat and structure their templates to focus solely on the pertinent data. **Discrete data within an EMR are highly granular, and with enough customization discrete data elements can be incorporated into a note without sacrificing readability.** For instance, rather than importing a full set of recent lab tables, one can template a sentence to include only the most recent creatinine value and the date it was collected.{% cite rosenbloom2011a --file 11-64 %}

### Clinical Decision Support

Clinical decision support (CDS) is defined as a "process for enhancing health-related decisions and actions with pertinent, organized clinical knowledge and patient information to improve healthcare and healthcare delivery."{% cite osheroff-a --file 11-64 %} EMR data on a patient can be leveraged to recommend a specific action or highlight important information. Pop-up alerts are a common form of CDS. [Table 4](#table-4){:.table-link} lists common CDS types, tools, and examples within pediatric urology.

**Table 4**{:#table-4}{:.table-number} Clinical decision support (CDS) examples within pediatric urology.

| Category                     | Tool                                                           | Benefit                                                             |                                                                        Example                                                                       |
|------------------------------|----------------------------------------------------------------|---------------------------------------------------------------------|:----------------------------------------------------------------------------------------------------------------------------------------------------:|
| Data entry                   | Smart form (dynamic, guided data entry)                        | Dynamically prompt collection of key, discrete data                 |                                Pediatric urodynamics data entry that adjusts based on procedures/documented conditions                               |
|                              | Order sets                                                     | Standardize order entry for patient condition                       |                                       Postoperative Pediatric Enhanced Recovery After Surgery (ERAS) order set                                       |
| Data review                  | Pediatric urology ambulatory nursing dashbaord                 | Centralizes assigned tasks and provides global assessment of duties | Lists pending postoperative calls, patient teaching tasks, inbox message pool review, and other indirect care tasks (e.g., tracking ureteral stents) |
| Assessment and understanding | Informational buttons, embedded links to educational materials | Provides on-the-spot educational opportunity for a clinician        |                    Providing a link to pediatric urology-specific surgical antibiotic prophylactic guidelines within an order set                    |
| Triggered by user task       | In-line workflow alerts                                        | Helpful for common notifications                                    |                                                                Flu vaccination prompts                                                               |
|                              | Pop-up, interruptive alerts                                    | Useful for important messages where an action is highly recommended |                                         Suggested medication change because the selected one is out of stock                                         |
|                              | Automated inbox notification                                   | Alert providers to required pending action                          |                                                   Reminder to finish documentation on an open chart                                                  |

The "five rights" of CDS are important to consider in designing and building new tools: 1) right information, 2), right person, 3) right intervention format, 4) right channel, 5) right time/workflow ([Table 5](#table-5){:.table-link}).{% cite campbell2013a --file 11-64 %} These concepts help to focus the tool to avoid interrupting the wrong team members at the wrong times with interventions that are not effective. While historically, CDS tools have not always improved efficiency, as time marches on, we suspect this will improve.{% cite bright2012a patterson2018a murphy2014a --file 11-64 %}

**Table 5**{:#table-5}{:.table-number} Five rights of CDS.

|           Right           |                                                                                                                          Explanation                                                                                                                         |
|:-------------------------:|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------:|
|     Right information     |                                                                 Information should be presented to the user that is ideally evidence-based (e.g., guideline) while avoiding too many details                                                                 |
|        Right person       |                                                                      Modern healthcare is team based and interventions should be targeted at the correct team member who can take action                                                                     |
| Right intervention format |                                                                                            An appropriate tool from Table 2 should be selected that aids the user                                                                                            |
|       Right channel       | Increasingly, there are EMR interfaces throughout the healthcare environment, a desktop clinic session, operating room flight board, handheld devices, printed patient lists, and more. CDS designers should select an optimal channel for the intervention. |
|    Right time/workflow    |                                               Interventions should be targeted and tested in real-world scenarios to ensure they are delivered at the correct time and in the correct workflow to be effective.                                              |

## Informatics Training

Clinical informatics is now taught through formal training programs that are GME-accredited. Board certification is available for those who wish to formalize their training.{% cite lehmann2018a --file 11-64 %} There are currently two pathways available to board certification (which is granted after passing a written exam) through the American Board of Preventative Medicine: 1) clinical informatics training pathway where you can sit for the board after completing graduate medical education (GME) certified training (typically one year), or 2) practice pathway that allows those with formal roles in your organization with at least 0.25 full-time equivalent dedicated time. The latter is available through 2023 (but this grandfather clause has been extended several times, recognizing that not all clinical informaticists have received formal training, but rather have gone through on-the-job training). More information about board certification requirements for clinical informatics is available through the [American Board of Preventative Medicine](https://www.theabpm.org/become-certified/subspecialties/clinical-informatics/).

## EMR Governance

Given the complexity of the EMR, particularly in ones with integrated outpatient, lab, pharmacy, inpatient, ED, OR functionality, changes to the EMR cannot be made by a small team without input from the organization. Many hospitals and systems with large EMRs have set up governance committees that discuss and decide on major changes that might impact a broad swath of users. Serving on these committees can provide valuable insight into new features of an EMR, may help you stave off a change that might negatively impact your team, or provide a venue to discuss a feature or build that might benefit your group or organization.

## Informatics Leadership and Help Desk

Many physicians have expressed frustration at not knowing where to start when there are issues or frustration with the current state of affairs. Knowing your IT and informatics leadership is a good place to begin. Many organizations (big and small) have someone designated to lead the IT team (perhaps called a Chief Information Officer or CIO). There is also likely someone clinical designated to liaise with the CIO to represent clinicians. At many organizations, this is a Chief Medical Informatics Officer or CMIO. Knowing who these people are at your organization is half the battle. Asking them to include designated persons to represent your interests is also key. These designated representatives should have an interest in informatics (if not formal training) and be empowered to make decisions on behalf of your group, while also serving as someone who can help facilitate change, which has emerged as a constant new normal in the EMR era.

Beyond engaging with key leaders at your health care organization, half the battle of EMR issues stems from a variation on the economics concept of "tragedy of the commons." This is where a shared resource (in this case, the EMR) is allowed to fester secondary to the prioritization of self-interest (read: precious clinician time and the assumption that others are handling an issue) over the attention to and betterment of said resource. More directly, when users encounter unexpected results in the EMR (unknown new error or functionality that is broken), we observe that most users work around the issue rather than report it to the help desk. Because IT staff are not clinicians, many of these issues in the EMR can go undetected for days or more because no one reports it to the help desk. **Do not assume that others have reported the issue.** To address the time it takes to call the help desk, delegate the task of notifying the help desk to a staff member (medical assistant, for example) while providing them with enough information to convey the issue.

## Conclusion

Clinical informatics is an increasing important area of practice for urologists. Having a member of your team or group who can represent your interests and seek additional training to be an expert in this area is likely to pay dividends in terms of efficiency, productivity, and minimize friction between your team and the EMR.

## Key Points
{:.key-points-head}

- Clinical informatics is a new field that leverages and bridges the gap between clinical care and information technology systems (with a particular focus on the EMR)
- EMRs have increasingly integrated features to make it easier to access radiology, pharmacy, clinical decision support, laboratory, documentation functionality that covers outpatient, inpatient, perioperative and emergency department care (HIMSS level 7)
- The additional complexity has required that organizations invest in clinical informatics teams to ensure more efficient utilization of the EMR that mirrors existing workflows and practices.
- Knowing your information technology (CIO) and informatics (CMIO) leaders are key to ensuring your interests are represented.
- Call the help desk when you encounter something unexpected. Do not fall trap to tragedy of the commons and think that someone else has reported the issue.
{:.key-points-list}

## References

{% bibliography --file 11-64 %}

*[EMR]: electronic medical record
*[PACS]: picture archiving and communication system
*[EMRs]: electronic medical records
*[EHR]: electronic health record
*[HIE]: health information exchange
*[HIMSS]: Healthcare Information and Management Systems Society
*[ICD]: International Classification of Diseases
*[SNOMED]: Systematized Nomenclature of Medicine
*[CPT]: Current Procedural Terminology®
*[LOINC]: Logical Observation Identifiers Names and Codes
*[HIEs]: health information exchanges
*[CORHIO]: Colorado Regional Health Information Organization
*[CCD]: continuity of care document
*[ED]: emergency department
*[OP]: outpatient
*[CDSS]: clinical decision support systems
*[CPOE]: computerized physician order entry
*[CDR]: clinical data repository
*[IS]: information systems
*[UTI]: urinary tract infection
*[CDS]: clinical decision support
*[ERAS]: enhanced recovery after surgery
*[GME]: graduate medical education
*[IT]: information technology
*[CIO]: chief information officer
*[CMIO]: chief medical informatics officer