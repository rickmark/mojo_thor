## Abstract


## Purpose
Modern NVR devices are central points whereby they can be scanned, segmented, and forensically recovered.  Not only that, but they often exist in secured areas behind multiple controls (cameras, locks, guards).  This and modern network based systems can be observed via systems such as flow analysis, packet capture, IDS/IPS systems and may be entirely closed systems with no connectivity to the internet itself.  This makes for hardened targets, or central points whereby compromise of a device can be detected and recovered / published.  An alternative approach which circumvents this by passing commands in ways that bypass network connection, and rely on physically accessible external cameras (as these are often on the outside of the building) is more useful as an attack vector.  This prevents various forms of detection already outlined and also makes countermeasures difficult to impossible.

## Overview of NVR Systems

## Cameras and Human Eye Spectra

### Experimentation with UV / IR Flood and Laser

## Use of NTP as a Means of Re-Recording
Devices like NVRs typically use the process of NTP (network time protocol) to establish system time.  If this metric is modifiable in any way (particularly if cameras on the same segment can spoof it as it has no proper authentication of source) it can cause an NVR to "time-travel" to the past, permitting a re-recording of input sources.  The end effect is garbled video streams and image captures whereby the same timestamp occurs twice and the most recent wins.
## Known Issues with Ubiquity and Device Firmware Validation
### Defect with Firmware Image Tree and RSA Signatures


## Discovered On-Device Capabilities

## History of Discovery
### Context - Rob Mark
Though I perused proper channels, continued stalking and harassment occured:
![[69A767FC-4686-4D28-ADC5-80C0F93E6683_1_105_c 1.jpeg]]
![[70ED31AF-F6A3-41DC-8DFB-6578FAAD02F8_1_105_c 1.jpeg]]
![[DB3510B1-8B0A-459F-854C-2833EFC65CCF_1_105_c.jpeg]]
![[70ED31AF-F6A3-41DC-8DFB-6578FAAD02F8_1_105_c.jpeg]]
### Assult and Murder of Alexander Mentele
On 6 December 2024, Christopher M called to inform me that my friend Alexander Mentele had passed away (https://www.nola.com/news/crime_police/man-found-dead-cbd-identified/article_d23ef258-b89f-11ef-b317-1fdc2298bc7b.html).  He told me that it appeared to be accidental due to substance use, but there were key indicators that foul play had been involved.  Unsettling about this was the fact that while there was footage from an NVR system, it did not contain any footage of any other person entering or leaving.  This indicated to me that the same person who had assaulted him in spring of 2022 (Robert Mark), who had the resources required for such a capability, and the common place similar issues I've encountered on my closed system UniFi system may overlap.  It was through connecting cases and reports across the country I was able to get the case re-determined:
![[1D651F2F-70B5-4749-9F2D-DD9D7C127FD0_1_201_a.jpeg]]
![[Pasted image 20260721141333.png|692]]
![[4E23DE18-CB7A-48D6-B1B1-336D538E1B34_1_105_c.jpeg]]
![[CB441D91-B54A-473C-AB2B-09D575E9DE14_1_105_c.jpeg|697]]
Alex's ex, Chad was also found in similar circumstance
![[89DDA1E5-5FBE-4B58-A65D-355E5A3BAF42_1_105_c.jpeg]]
Tragically, the scripts given to me for his funeral appeared designed to paint a picture of someone who should not be believed.  I doubt any rational person would believe friends and family would paint an unreliable, sex-crazed, drug addict in their remembrance.
![[B23BC4D5-D268-4F12-8975-FB5268CA0BC4_1_105_c.jpeg]]
More disturbing is that multiple other observations about my own home reinforced this.  During winter, a camera on my front door had suspiciously placed in a neighbors yard two "snow sticks" that were aligned quite directly with the boundry of two white pillars that were in view of that camera.  I postulated that they could be used with a camera as helpers to indicate where two white surfaces (snow and white pillars) exist to define the "foreground" and the "background".
### Evidence Suppression - Meta
On other occasions live video streams would include what appeared to be otherwise not visible flashes of a blue-ish hue.  It repeated at a constant rate and the source was never identified, nor did it appear on any of the recordings.  This is how I postulated non-human eye visable spectra may be a command channel.  The periodicity of the flashes indicated that the camera was in fact looping some segment of video (about 2.5 seconds worth).  This could be a simple accidental artifact of the "pause" side-channel command.
![[3B8F6E06-8E42-4042-BE47-5CB0B69BF4E8_1_105_c.jpeg]]
![[4EE40C06-7559-4529-85AD-D91E96D13FDB_1_201_a.jpeg]]
![[69A767FC-4686-4D28-ADC5-80C0F93E6683_1_105_c.jpeg]]
![[20C3DB32-FA8B-4E76-899F-C428036C8FC5_1_105_c.jpeg]]
![[B91F7199-138D-4A26-AFA3-2D0CED445984_1_105_c.jpeg]]
A similar such paper was written in January 2025 at Meta but when submitted to an employer for review (recall again this is not invention nor IP, but a reverse engineering of crimes I've myself suffered) it led to issue with employment.  This is particularly relevant given that after I had chosen to no-longer travel for work for said employer (after a near death on a work trip, one where Alex was also in NYC at the same time), I was assaulted in my own home prior to the meetings scheduled for DC that week.  That was documented as an assault and a rape kit was taken at Sacred Heart in Spokane, but buried by Liberty Lake police.  The very first follow up occurred at about 93 days post incident.  This is consistent with an intention to wait 90 days for any Ring or other types of footage collected by other cameras in the neighborhood to be lost.  More upsetting was a number of persons from my past (including as shown a former roommate) were flying to Hawaii for what would likely be depositions or testimony for said employer to create a false narrative designed to discredit me.
![[BE232AE1-9CAF-483A-ACDB-5BE8F4692DB8_1_105_c.jpeg]]
![[72FB7136-74EA-4CAD-BE08-B4E821AF6C9F_1_105_c.jpeg]]
### Example - Garbled Artifacting - Color Replacement
![[Pasted image 20260721143111.png]]
![[Pasted image 20260721143145.png]]