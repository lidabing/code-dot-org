module Pd
  module Facilitator1920ApplicationConstants
    include FacilitatorCommonApplicationConstants
    # Remove newlines and leading whitespace from multiline strings
    def self.clean_multiline(string)
      string.gsub(/\n\s*/, ' ')
    end

    SECTION_HEADERS = BASE_SECTION_HEADERS.freeze
    PAGE_LABELS = BASE_PAGE_LABELS.freeze

    ALL_LABELS = PAGE_LABELS.values.reduce(:merge).freeze
    ALL_LABELS_WITH_OVERRIDES = ALL_LABELS.map {|k, v| [k, LABEL_OVERRIDES[k] || v]}.to_h.freeze

    VALID_SCORES = {
      question_1: [5, 3, 0],
      question_2: [5, 3, 0],
      question_3: [5, 3, 0],
      question_4: [5, 3, 0],
      question_5: [5, 3, 0]
    }.freeze

    SCOREABLE_QUESTIONS = {
      interview_questions: [
        :question_1,
        :question_2,
        :question_3,
        :question_4,
        :question_5
      ]
    }.freeze

    INTERVIEW_QUESTIONS = {
      question_1: clean_multiline(
        'Question 1: Code.org’s programs are designed for teachers of all backgrounds, especially teachers with
        little-to-no experience with computer science. What are two strategies you would use to engage and support
        these teachers in your workshops?'
      ),

      question_2: clean_multiline(
        'Question 2: Code.org believes all students should have access to computer science education, but it can
        be challenging to help all teachers believe every student can learn computer science. What are two strategies
        you would use to support teachers who are doubtful that this material is accessible to all of their students?'
      ),

      question_3: clean_multiline(
        'Question 3: Imagine that you are co-leading a workshop with another facilitator. You are leading a
        discussion and from your perspective, the participants seem engaged. During the next break, you mention
        to your co-facilitator that you think things are going well, but she seems concerned and says that she
        thinks you should have led the session differently. How would you respond in the moment? What are the
        next steps you would take? How do you prefer to receive feedback from a colleague?'
      ),

      question_4: clean_multiline(
        'Question 4: Imagine that you are preparing to co-lead an upcoming workshop. You suggest to your
        co-facilitator, whom you have not worked with, that you meet the week before to talk through the
        agenda for the day, decide which portions you’ll each lead, and discuss any questions or concerns
        you each have regarding the material. Your co-facilitator declines to meet and instead sends you an
        email with the agenda items they will lead. How would you respond in the moment? What are the next
        steps you would take? How do you prefer to give feedback to a colleague?'
      ),

      question_5: clean_multiline(
        'Question 5: Imagine you are three hours into leading a workshop. Despite your careful planning and
        following the agenda, you notice that certain voices in the room are overpowering others. Often, these
        voices do not align with the philosophy of the curriculum or the Professional Learning Program. What
        strategies would you implement to balance and redirect the conversation so more voices could be heard?
        How would you know when you were successful?'
      ),

      question_6: clean_multiline(
        'Question 6: This program requires a significant time commitment throughout the year. (Review the time
        commitments associated with the specific program). What concerns do you have about meeting this commitment?
        What support will you need from us (the Regional Partner) to fulfill this commitment? What support will
        you need from Code.org? Do you anticipate being a facilitator for multiple years?'
      ),

      question_7: clean_multiline(
        'Question 7: (Optional) If applicable, ask the applicant questions that will address regional needs.
        Does your availability match our needs in terms of frequency and timing? (ex: are you available to
        facilitate on weekdays?) Are you able and willing to assist with teacher recruitment? Are you able and
        willing to hold office hours? Other requirements?'
      )
    }.freeze
  end
end
